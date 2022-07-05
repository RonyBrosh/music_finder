// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:core/core.dart' as _i14;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/api/deezer/deezer_api.dart' as _i7;
import '../data/api/ticket_master/interceptor/ticket_master_interceptor.dart'
    as _i6;
import '../data/api/ticket_master/ticket_master_api.dart' as _i5;
import '../domain/model/genre.dart' as _i13;
import '../domain/repository/discover_repository.dart' as _i8;
import '../domain/use_case/get_events_use_case.dart' as _i9;
import '../domain/use_case/get_genres_use_case.dart' as _i10;
import '../domain/use_case/get_tracks_use_case.dart' as _i11;
import '../navigation/router/discovery_router.dart' as _i4;
import '../presentation/event_picker/bloc/event_picker_bloc.dart' as _i12;
import 'ticket_master_module.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final ticketMasterModule = _$TicketMasterModule();
  gh.lazySingleton<_i3.Dio>(() => ticketMasterModule.provideTicketMasterDio,
      instanceName: 'ticketMasterDioTIParameterName');
  gh.lazySingleton<_i3.Dio>(() => ticketMasterModule.provideDeezerDio,
      instanceName: 'deezerDioTIParameterName');
  gh.lazySingleton<_i4.DiscoveryRouter>(() => _i4.DiscoveryRouter());
  gh.factory<_i5.TicketMasterApi>(() => _i5.TicketMasterApi(
      get<_i3.Dio>(instanceName: 'ticketMasterDioTIParameterName')));
  gh.lazySingleton<_i6.TicketMasterInterceptor>(
      () => _i6.TicketMasterInterceptor());
  gh.factory<_i7.DeezerApi>(() =>
      _i7.DeezerApi(get<_i3.Dio>(instanceName: 'deezerDioTIParameterName')));
  gh.factory<_i8.DiscoverRepository>(() =>
      _i8.DiscoverRepository(get<_i5.TicketMasterApi>(), get<_i7.DeezerApi>()));
  gh.factory<_i9.GetEventsUseCase>(
      () => _i9.GetEventsUseCase(get<_i8.DiscoverRepository>()));
  gh.factory<_i10.GetGenresUseCase>(
      () => _i10.GetGenresUseCase(get<_i8.DiscoverRepository>()));
  gh.factory<_i11.GetTracksUseCase>(
      () => _i11.GetTracksUseCase(get<_i8.DiscoverRepository>()));
  gh.factoryParam<_i12.EventPickerBloc, _i13.Genre, dynamic>((_genre, _) =>
      _i12.EventPickerBloc(get<_i14.LinkManager>(), get<_i9.GetEventsUseCase>(),
          get<_i11.GetTracksUseCase>(), _genre));
  return get;
}

class _$TicketMasterModule extends _i15.TicketMasterModule {}
