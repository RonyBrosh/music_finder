// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deezer_genres_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeezerGenresResponse _$$_DeezerGenresResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DeezerGenresResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => DeezerGenre.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DeezerGenresResponseToJson(
        _$_DeezerGenresResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
