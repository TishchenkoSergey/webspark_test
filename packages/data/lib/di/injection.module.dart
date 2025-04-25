//@GeneratedMicroModule;DataPackageModule;package:data/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:data/di/injection.dart' as _i237;
import 'package:data/repository/calculation_repository.dart' as _i993;
import 'package:data/repository/get_task_data_repository.dart' as _i657;
import 'package:data/repository/url_storage_repository.dart' as _i899;
import 'package:domain/domain.dart' as _i494;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

class DataPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) async {
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs(),
      preResolve: true,
    );
    gh.factory<_i494.CalculationRepository>(
        () => _i993.CalculationRepositoryImpl());
    gh.factory<_i494.GetTaskDataRepository>(
        () => const _i657.GetTaskDataRepositoryImpl());
    gh.factory<_i494.UrlStorageRepository>(
        () => _i899.UrlStorageRepositoryImpl(gh<_i460.SharedPreferences>()));
  }
}

class _$RegisterModule extends _i237.RegisterModule {}
