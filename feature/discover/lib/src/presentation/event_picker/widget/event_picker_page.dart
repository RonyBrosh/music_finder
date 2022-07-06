import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:discover/src/data/audio_player_manager.dart';
import 'package:discover/src/domain/model/event.dart';
import 'package:discover/src/domain/model/genre.dart';
import 'package:discover/src/localisation/build_context_extension.dart';
import 'package:discover/src/presentation/event_picker/bloc/event_picker_bloc.dart';
import 'package:discover/src/presentation/event_picker/widget/event_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class EventPickerPage extends StatefulWidget {
  EventPickerPage({
    Key? key,
    required this.genre,
  }) : super(key: key);

  final Genre genre;

  @override
  State<EventPickerPage> createState() => _EventPickerPageState();
}

class _EventPickerPageState extends State<EventPickerPage> {
  @override
  void dispose() async {
    super.dispose();
    await AudioPlayerManager.stop();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => diContainer<EventPickerBloc>(parameter: widget.genre),
      child: PlatformScaffold(
        appBar: PlatformAppBar(title: context.discoverTranslation.event_picker.title(widget.genre.name)),
        body: BlocConsumer<EventPickerBloc, EventPickerState>(
          listener: (_, state) {
            state.mapOrNull(error: (_) => _showError(context));
          },
          builder: (context, state) {
            return state.maybeWhen(
              content: (content) {
                if (content.isEmpty) {
                  return const NoResult();
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(Space.small),
                    child: MasonryGridView.count(
                      crossAxisCount: kIsWeb ? 4 : 1,
                      mainAxisSpacing: Space.tiny,
                      crossAxisSpacing: Space.tiny,
                      itemCount: content.length,
                      itemBuilder: (context, index) {
                        return EventCard(
                          item: content[index],
                          onWeblinkTap: (event) => _onOpenWeblink(context, event),
                          onPlayTap: (event) => context.read<EventPickerBloc>().add(EventPickerEvent.play(event)),
                        );
                      },
                    ),
                  );
                }
              },
              loading: () => const PlatformLoading(),
              orElse: () => const SizedBox(),
            );
          },
        ),
      ),
    );
  }

  void _showError(BuildContext context) {
    PlatformDialog(
      title: context.discoverTranslation.event_picker.error.title,
      content: context.discoverTranslation.event_picker.error.content,
      mainButtonText: context.coreTranslation.dialog.button.ok,
    ).show(context);
  }

  void _onOpenWeblink(BuildContext context, Event event) {
    context.read<EventPickerBloc>().add(EventPickerEvent.openWeblink(event));
  }
}
