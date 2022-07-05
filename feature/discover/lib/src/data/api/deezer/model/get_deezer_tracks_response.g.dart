// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_deezer_tracks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetDeezerTracksResponse _$$_GetDeezerTracksResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetDeezerTracksResponse(
      tracks: (_readTracks(json, 'tracks') as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_GetDeezerTracksResponseToJson(
        _$_GetDeezerTracksResponse instance) =>
    <String, dynamic>{
      'tracks': instance.tracks,
    };
