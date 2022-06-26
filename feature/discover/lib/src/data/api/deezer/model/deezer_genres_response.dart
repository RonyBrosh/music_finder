import 'package:discover/src/data/api/deezer/model/deezer_genre.dart';
import 'package:discover/src/domain/model/genre.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deezer_genres_response.freezed.dart';

part 'deezer_genres_response.g.dart';

@freezed
class DeezerGenresResponse with _$DeezerGenresResponse {
  const DeezerGenresResponse._();
  
  const factory DeezerGenresResponse({required List<DeezerGenre> data}) = _DeezerGenresResponse;

  factory DeezerGenresResponse.fromJson(Map<String, dynamic> json) => _$DeezerGenresResponseFromJson(json);

  List<Genre> toGenres() {
    return data.map((deezerGenre) => deezerGenre.toGenre()).toList(growable: false);
  }
}
