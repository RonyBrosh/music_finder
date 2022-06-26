import 'package:discover/src/data/api/deezer/model/deezer_genres_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'deezer_api.g.dart';

@injectable
@RestApi()
abstract class DeezerApi {
  @factoryMethod
  factory DeezerApi(Dio dio) = _DeezerApi;

  @GET('/genre')
  Future<DeezerGenresResponse> fetchGenres();
}
