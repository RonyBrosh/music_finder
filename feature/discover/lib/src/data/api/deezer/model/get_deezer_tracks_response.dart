import 'package:discover/src/data/api/ticket_master/model/ticket_master_event.dart';
import 'package:discover/src/domain/model/event.dart';
import 'package:discover/src/domain/model/track.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_deezer_tracks_response.freezed.dart';

part 'get_deezer_tracks_response.g.dart';

@freezed
class GetDeezerTracksResponse with _$GetDeezerTracksResponse {
  const GetDeezerTracksResponse._();

  const factory GetDeezerTracksResponse({
    @JsonKey(readValue: _readTracks) required List<String> tracks,
  }) = _GetDeezerTracksResponse;

  factory GetDeezerTracksResponse.fromJson(Map<String, dynamic> json) => _$GetDeezerTracksResponseFromJson(json);

  List<Track> toTracks() {
    return tracks.map((track) => Track(url: track)).toList(growable: false);
  }
}

Object _readTracks(Map json, String key) {
  final data = json['data'] as List;
  return data.map((item) => item['preview']).toList(growable: false);
}
