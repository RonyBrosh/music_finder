import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'grid_page_bloc.freezed.dart';

part 'grid_page_event.dart';

part 'grid_page_state.dart';

@injectable
class GridPageBloc<T> extends Bloc<GridPageEvent, GridPageState> {
  GridPageBloc(
    @factoryParam this._loadItems,
  ) : super(const GridPageState.initial()) {
    on<GridPageEvent>(
      (event, emit) => event.map(
        load: (_) => _onLoad(emit),
      ),
    );
    add(GridPageEvent.load());
  }

  final Future<ResultState<List<T>>> _loadItems;

  Future<void> _onLoad(Emitter<GridPageState> emit) async {
    emit(GridPageState.loading());

    final result = await _loadItems;
    emit(
      result.fold(
        onSuccess: (data) {
          if (data.isEmpty) {
            return GridPageState.empty();
          } else {
            return GridPageState.success(data);
          }
        },
        onFailure: (reason) => GridPageState.error(),
      ),
    );
  }
}
