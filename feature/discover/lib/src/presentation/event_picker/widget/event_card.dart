import 'package:design_system/design_system.dart';
import 'package:discover/src/domain/model/event.dart';
import 'package:discover/src/localisation/build_context_extension.dart';
import 'package:discover/src/presentation/event_picker/model/event_picker_item.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.item,
    required this.onWeblinkTap,
    required this.onPlayTap,
  }) : super(key: key);

  final EventPickerItem item;
  final void Function(Event) onWeblinkTap;
  final void Function(Event) onPlayTap;

  @override
  Widget build(BuildContext context) {
    final Event event = item.event;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 3 / 2,
            child: Image.network(
              event.image,
              fit: BoxFit.cover,
            ),
          ),
          TextTitle(text: event.name),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextSubtitle(text: _createDateText(context, event.dateTime)),
                  TextCaption(text: event.venue),
                  TextLink(
                    text: context.discoverTranslation.event_picker.hyperlink,
                    url: event.url,
                    onTap: () => onWeblinkTap(event),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(Space.xlarge),
                    child: IconButton(
                      alignment: Alignment.bottomRight,
                      onPressed: () => onPlayTap(event),
                      icon: Icon(
                        item.isPlaying ? Icons.music_off : Icons.music_note_sharp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _createDateText(BuildContext context, DateTime? dateTime) {
    return dateTime != null ? dateTime.toString() : context.discoverTranslation.event_picker.noDate;
  }
}
