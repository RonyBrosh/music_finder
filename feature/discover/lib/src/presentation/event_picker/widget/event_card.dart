import 'package:design_system/design_system.dart';
import 'package:discover/src/domain/model/event.dart';
import 'package:discover/src/localisation/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class EventCard extends StatelessWidget {
  const EventCard({Key? key, required this.event}) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextTitle(text: event.name),
            TextSubtitle(text: _createDateText(context, event.dateTime)),
            TextCaption(text: event.venue),
            TextLink(
              text: context.discoverTranslation.event_picker.hyperlink,
              url: event.url,
              onTap: () => _launchURL(event.url),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    }
  }

  String _createDateText(BuildContext context, DateTime? dateTime) {
    return dateTime != null ? dateTime.toString() : context.discoverTranslation.event_picker.noDate;
  }
}
