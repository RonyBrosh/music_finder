import 'package:discover/src/domain/model/genre.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discovery_flow_state.freezed.dart';

@freezed
class DiscoveryFlowState with _$DiscoveryFlowState {
  const factory DiscoveryFlowState.genre() = _Genre;

  const factory DiscoveryFlowState.event({required Genre genre}) = _Event;
}
