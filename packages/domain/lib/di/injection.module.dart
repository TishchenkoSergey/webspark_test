//@GeneratedMicroModule;DomainPackageModule;package:domain/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:domain/domain.dart' as _i494;
import 'package:domain/repository/repository.dart' as _i174;
import 'package:domain/usecases/get_breadth_first_search_usecase.dart' as _i912;
import 'package:domain/usecases/get_saved_task_data_usecase.dart' as _i668;
import 'package:domain/usecases/get_shortest_path_usecase.dart' as _i887;
import 'package:domain/usecases/get_task_data_usecase.dart' as _i940;
import 'package:domain/usecases/set_calculation_data_usecase.dart' as _i811;
import 'package:domain/usecases/update_url_storage_usecase.dart' as _i898;
import 'package:injectable/injectable.dart' as _i526;

class DomainPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i898.UpdateUrlStorageUsecase>(() =>
        _i898.UpdateUrlStorageUsecaseImpl(gh<_i174.UrlStorageRepository>()));
    gh.factory<_i912.GetBreadthFirstSearchUsecase>(
        () => _i912.GetBreadthFirstSearchUsecaseImpl());
    gh.factory<_i668.GetSavedTaskDataUsecase>(() =>
        _i668.GetSavedTaskDataUsecaseImpl(gh<_i494.TaskStorageRepository>()));
    gh.factory<_i811.SetCalculationDataUsecase>(() =>
        _i811.SetCalculationDataUsecaseImpl(gh<_i494.CalculationRepository>()));
    gh.factory<_i940.GetTaskDataUsecase>(() => _i940.GetTaskDataUsecaseImpl(
          gh<_i494.TaskDataRepository>(),
          gh<_i494.UrlStorageRepository>(),
          gh<_i494.TaskStorageRepository>(),
        ));
    gh.factory<_i887.GetShortestPath>(() => _i887.GetShortestPathImpl(
          gh<_i494.GetTaskDataUsecase>(),
          gh<_i494.GetBreadthFirstSearchUsecase>(),
        ));
  }
}
