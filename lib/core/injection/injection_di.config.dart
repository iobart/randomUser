// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../random/data/api/random_api.dart' as _i3;
import '../../random/data/home/home_remote_data_source.dart' as _i4;
import '../../random/domain/repositories/home_repository.dart' as _i6;
import '../../random/domain/repositories/i_home_repository.dart' as _i5;
import '../../random/domain/usecases/get_user_random_use_case.dart' as _i7;
import '../../random/presentation/pages/home/home_view_model.dart' as _i8;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initConfigInjection(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.RandomApi>(() => _i3.RandomApi());
  gh.factory<_i4.HomeRemoteDataSource>(
      () => _i4.HomeRemoteDataSource(randomApi: gh<_i3.RandomApi>()));
  gh.factory<_i5.IHomeRepository>(() =>
      _i6.HomeRepository(homeRemoteDataSource: gh<_i4.HomeRemoteDataSource>()));
  gh.factory<_i7.GetRandomUserUseCase>(() =>
      _i7.GetRandomUserUseCase(homeRepository: gh<_i5.IHomeRepository>()));
  gh.lazySingleton<_i8.HomeViewModel>(() =>
      _i8.HomeViewModel(getRandomUserUseCase: gh<_i7.GetRandomUserUseCase>()));
  return getIt;
}
