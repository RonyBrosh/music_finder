import 'package:discover/src/data/api/deezer/model/get_deezer_tracks_response.dart';
import 'package:discover/src/di/ticket_master_module.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'deezer_api.g.dart';

@injectable
@RestApi()
abstract class DeezerApi {
  @factoryMethod
  factory DeezerApi(@Named(deezerDioTIParameterName) Dio dio) = _DeezerApi;

  @GET('/search?limit=3')
  Future<GetDeezerTracksResponse> getTracks({@Query('q') required String text});
}
