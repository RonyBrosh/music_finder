import 'package:discover/src/data/api/ticket_master/model/get_ticket_master_generes_response.dart';
import 'package:discover/src/di/ticket_master_module.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'ticket_master_api.g.dart';

@injectable
@RestApi()
abstract class TicketMasterApi {
  @factoryMethod
  factory TicketMasterApi(@Named(ticketMasterDioTIParameterName) Dio dio) = _TicketMasterApi;

  @GET('/discovery/v2/classifications/KZFzniwnSyZfZ7v7nJ')
  Future<TicketMasterGenresResponse> getGenres();
}
