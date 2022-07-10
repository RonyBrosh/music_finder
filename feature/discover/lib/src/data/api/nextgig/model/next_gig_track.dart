import 'package:discover/src/data/api/ticket_master/model/ticket_master_event.dart';
import 'package:discover/src/domain/model/event.dart';
import 'package:discover/src/domain/model/track.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'next_gig_track.freezed.dart';

part 'next_gig_track.g.dart';

@freezed
class NextGigTrack with _$NextGigTrack {
  const NextGigTrack._();

  const factory NextGigTrack({
    required int id,
    required String title,
    required String url,
  }) = _NextGigTrack;

  factory NextGigTrack.fromJson(Map<String, dynamic> json) => _$NextGigTrackFromJson(json);

  Track toTrack() {
    return Track(url: url);
  }
}
