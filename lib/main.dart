import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:discover/discover.dart';
import 'package:flutter/material.dart';

main() async {
  await diContainer.init(
    [
      CoreDIInitializer(),
      DesignSystemDIInitializer(),
      DiscoveryDIInitializer(),
    ],
  );

  runApp(const MusicFinderApp());
}

class MusicFinderApp extends StatelessWidget {
  const MusicFinderApp();

  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      home: const GenrePickerPage(),
      isShowDebugBanner: true,
    );
  }
}
