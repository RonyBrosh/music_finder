import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:discover/src/domain/model/genre.dart';
import 'package:discover/src/localisation/build_context_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class EventPickerPage extends StatelessWidget {
  const EventPickerPage({
    Key? key,
    required this.genre,
  }) : super(key: key);

  final Genre genre;

  @override
  Widget build(BuildContext context) {
    return GridPage<String>(
      title: context.discoverTranslation.event_picker.title(genre.name),
      onLoad: Future.value(ResultState.success(['1', '2'])),
      onError: () => {},
      onBuildItem: (genre) => Center(),
      crossAxisCount: kIsWeb ? 6 : 2,
    );
  }
}
