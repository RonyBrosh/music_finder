import 'package:discover/src/navigation/flow/discovery_flow_state.dart';
import 'package:discover/src/presentation/event_picker/widget/event_picker_page.dart';
import 'package:discover/src/presentation/genre_picker/widget/genre_picker_page.dart';
import 'package:flutter/material.dart';
import 'package:flow_builder/flow_builder.dart';

class DiscoveryFlow extends StatelessWidget {
  const DiscoveryFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<DiscoveryFlowState>(
      state: const DiscoveryFlowState.genre(),
      onGeneratePages: (state, pages) {
        return state.map(
          genre: (_) => [
            MaterialPage(child: GenrePickerPage()),
          ],
          event: (state) => [
            ...pages,
            MaterialPage(child: EventPickerPage(genre: state.genre)),
          ],
        );
      },
    );
  }
}
