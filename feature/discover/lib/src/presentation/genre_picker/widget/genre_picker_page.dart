import 'package:core/core.dart';
import 'package:discover/src/domain/model/genre.dart';
import 'package:discover/src/domain/use_case/get_genres_use_case.dart';
import 'package:discover/src/localisation/build_context_extension.dart';
import 'package:discover/src/presentation/genre_picker/widget/genre_card.dart';
import 'package:flutter/widgets.dart';
import 'package:design_system/design_system.dart';

class GenrePickerPage extends StatelessWidget {
  const GenrePickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridPage<Genre>(
      title: context.discoverTranslation.genre_picker.title,
      onLoad: diContainer<GetGenresUseCase>()(),
      onError: () => _showError(context),
      onBuildItem: (genre) => GenreCard(genre: genre),
      crossAxisCount: 2,
    );
  }

  void _showError(BuildContext context) {
    PlatformDialog(
      title: context.discoverTranslation.genre_picker.error.title,
      content: context.discoverTranslation.genre_picker.error.content,
      mainButtonText: context.coreTranslation.dialog.button.ok,
    ).show(context);
  }
}
