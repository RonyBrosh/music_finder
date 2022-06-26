// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/api/deezer/deezer_api.dart' as _i3;
import '../domain/repository/discover_repository.dart' as _i5;
import '../domain/use_case/get_genres_use_case.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.DeezerApi>(() => _i3.DeezerApi(get<_i4.Dio>()));
  gh.factory<_i5.DiscoverRepository>(
      () => _i5.DiscoverRepository(get<_i3.DeezerApi>()));
  gh.factory<_i6.GetGenresUseCase>(
      () => _i6.GetGenresUseCase(get<_i5.DiscoverRepository>()));
  return get;
}
