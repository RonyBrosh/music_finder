import 'package:core/core.dart';
import 'package:design_system/src/atom/dimens.dart';
import 'package:design_system/src/molecule/no_result.dart';
import 'package:design_system/src/molecule/platform_app_bar.dart';
import 'package:design_system/src/molecule/platform_loading.dart';
import 'package:design_system/src/molecule/platform_scaffold.dart';
import 'package:design_system/src/template/grid_page/bloc/grid_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
      child: PlatformScaffold(
        appBar: title != null ? PlatformAppBar(title: title!) : null,
        body: BlocConsumer<GridPageBloc, GridPageState>(
          listener: (context, state) {
            state.whenOrNull(
              error: onError,
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              success: (data) => Padding(
                padding: const EdgeInsets.all(Space.small),
                child: MasonryGridView.count(
                  crossAxisCount: crossAxisCount,
                  mainAxisSpacing: Space.tiny,
                  crossAxisSpacing: Space.tiny,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return onBuildItem(data[index]);
                  },
                ),
              ),
              loading: () => const PlatformLoading(),
              empty: () => const NoResult(),
              orElse: () => const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
