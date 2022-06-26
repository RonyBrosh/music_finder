import 'package:discover/src/domain/model/genre.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deezer_genre.freezed.dart';

part 'deezer_genre.g.dart';

@freezed
class DeezerGenre with _$DeezerGenre {
  const DeezerGenre._();

  const factory DeezerGenre({
    required String picture_medium,
    required int id,
    required String name,
  }) = _DeezerGenre;

  factory DeezerGenre.fromJson(Map<String, dynamic> json) => _$DeezerGenreFromJson(json);

  Genre toGenre() {
    return Genre(
      image: picture_medium,
      id: id.toString(),
      name: name,
    );
  }
}
