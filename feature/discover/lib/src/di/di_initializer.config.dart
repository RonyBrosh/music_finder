// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/api/ticket_master/interceptor/ticket_master_interceptor.dart'
    as _i6;
import '../data/api/ticket_master/ticket_master_api.dart' as _i5;
import '../domain/repository/discover_repository.dart' as _i7;
import '../domain/use_case/get_genres_use_case.dart' as _i8;
import '../navigation/router/discovery_router.dart' as _i4;
import 'ticket_master_module.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final ticketMasterModule = _$TicketMasterModule();
  gh.lazySingleton<_i3.Dio>(() => ticketMasterModule.provideDio,
      instanceName: 'ticketMasterDioTIParameterName');
  gh.lazySingleton<_i4.DiscoveryRouter>(() => _i4.DiscoveryRouter());
  gh.factory<_i5.TicketMasterApi>(() => _i5.TicketMasterApi(
      get<_i3.Dio>(instanceName: 'ticketMasterDioTIParameterName')));
  gh.lazySingleton<_i6.TicketMasterInterceptor>(
      () => _i6.TicketMasterInterceptor());
  gh.factory<_i7.DiscoverRepository>(
      () => _i7.DiscoverRepository(get<_i5.TicketMasterApi>()));
  gh.factory<_i8.GetGenresUseCase>(
      () => _i8.GetGenresUseCase(get<_i7.DiscoverRepository>()));
  return get;
}

class _$TicketMasterModule extends _i9.TicketMasterModule {}
