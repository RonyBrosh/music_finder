import 'package:design_system/design_system.dart';
import 'package:discover/src/domain/model/event.dart';
import 'package:discover/src/localisation/build_context_extension.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key? key,
    required this.event,
    required this.onTap,
  }) : super(key: key);

  final Event event;
  final void Function(Event) onTap;

  @override
  Widget build(BuildContext context) {
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
          TextSubtitle(text: _createDateText(context, event.dateTime)),
          TextCaption(text: event.venue),
          TextLink(
            text: context.discoverTranslation.event_picker.hyperlink,
            url: event.url,
            onTap: () => onTap(event),
          ),
        ],
      ),
    );
  }

  String _createDateText(BuildContext context, DateTime? dateTime) {
    return dateTime != null ? dateTime.toString() : context.discoverTranslation.event_picker.noDate;
  }
}
