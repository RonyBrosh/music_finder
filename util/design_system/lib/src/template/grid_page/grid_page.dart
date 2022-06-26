import 'package:core/core.dart';
import 'package:design_system/src/template/grid_page/bloc/grid_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridPage<T> extends StatelessWidget {
  const GridPage({
    Key? key,
    this.title,
    this.onRefresh,
    required this.onLoad,
    required this.onError,
    required this.onBuildItem,
    required this.crossAxisCount,
  }) : super(key: key);

  final Future<ResultState<List<T>>> onLoad;
  final void Function() onError;
  final Widget Function(T) onBuildItem;
  final int crossAxisCount;
  final String? title;
  final Function? onRefresh;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => diContainer<GridPageBloc>(parameter: onLoad),
      child: BlocConsumer<GridPageBloc, GridPageState>(
        listener: (context, state) {
          state.whenOrNull(
            error: onError,
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            success: (data) => GridView.builder(
              itemCount: data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount),
              itemBuilder: (context, index) {
                return onBuildItem(data[index]);
              },
            ),
            orElse: () => Center(
              child: Text('Loading'),
            ),
          );
        },
      ),
    );
  }
}
