import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:discover/src/domain/model/event.dart';
import 'package:discover/src/domain/model/genre.dart';
import 'package:discover/src/domain/use_case/get_events_use_case.dart';
import 'package:discover/src/localisation/build_context_extension.dart';
import 'package:discover/src/presentation/event_picker/widget/event_card.dart';
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
    return GridPage<Event>(
      title: context.discoverTranslation.event_picker.title(genre.name),
      onLoad: diContainer<GetEventsUseCase>()(genre: genre),
      onError: () => _showError(context),
      onBuildItem: (event) => EventCard(event: event),
      crossAxisCount: kIsWeb ? 2 : 1,
    );
  }

  void _showError(BuildContext context) {
    PlatformDialog(
      title: context.discoverTranslation.event_picker.error.title,
      content: context.discoverTranslation.event_picker.error.content,
      mainButtonText: context.coreTranslation.dialog.button.ok,
    ).show(context);
  }
}
