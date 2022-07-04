import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher_string.dart';

@injectable
class LinkManager {
  const LinkManager();

  void openWebLink(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    }
  }
}
