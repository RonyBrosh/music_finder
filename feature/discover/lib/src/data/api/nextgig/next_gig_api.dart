import 'package:discover/src/data/api/nextgig/model/next_gig_track.dart';
import 'package:discover/src/di/ticket_master_module.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'next_gig_api.g.dart';

@injectable
@RestApi()
abstract class NextGigApi {
  @factoryMethod
  factory NextGigApi(@Named(nextGigDioTIParameterName) Dio dio) = _NextGigApi;

  @GET('/app/tracks?limit=3')
  Future<List<NextGigTrack>> getTracks({@Query('artist') required String artist});
}
