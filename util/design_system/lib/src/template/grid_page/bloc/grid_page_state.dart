part of 'grid_page_bloc.dart';

@freezed
class GridPageState<T> with _$GridPageState {
  const factory GridPageState.initial() = _Initial;

  const factory GridPageState.loading() = _Loading;

  const factory GridPageState.error() = _Error;

  const factory GridPageState.success(List<T> data) = _Success;

  const factory GridPageState.empty() = _Empty;
}
