import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

import 'package:get_it/get_it.dart';
import 'package:webspark_test/features/calculation_result_screen/calculation_result_screen.dart';

import 'package:webspark_test/features/features.dart';

import 'package:domain/domain.dart';

import 'app_route_enum.dart';

class AppRoute {
  AppRoute({
    required this.serviceLocator,
  });

  final GetIt serviceLocator;

  GoRouter build(BuildContext context) {
    return GoRouter(
      routes: [
        _buildMainPage(),
        _buildProcessPage(),
        _buildResultListPage(),
        _buildCalculationResultPage(),
      ],
      initialLocation: '/${Routes.mainScreen.name}',
    );
  }

  GoRoute _buildMainPage() {
    return GoRoute(
      name: Routes.mainScreen.name,
      path: '/${Routes.mainScreen.name}',
      builder: (BuildContext context, GoRouterState state) => BlocProvider(
        create: (context) => MainCubit(
          updateUrlStorageUsecase: serviceLocator.get(),
        ),
        child: MainScreen(),
      ),
    );
  }

  GoRoute _buildProcessPage() {
    return GoRoute(
      name: Routes.processScreen.name,
      path: '/${Routes.processScreen.name}',
      builder: (BuildContext context, GoRouterState state) => BlocProvider(
        create: (context) => ProcessCubit(
          getShortestPath: serviceLocator.get(),
          setCalculationDataUsecase: serviceLocator.get(),
        ),
        child: const ProcessScreen(),
      ),
    );
  }

  GoRoute _buildResultListPage() {
    return GoRoute(
      name: Routes.resultListScreen.name,
      path: '/${Routes.resultListScreen.name}',
      builder: (BuildContext context, GoRouterState state) {
        final shortestPath = state.extra! as List<CalculationDataModel>;

        return BlocProvider(
          create: (context) => ResultListCubit(shortestPath: shortestPath),
          child: const ResultListScreen(),
        );
      },
    );
  }

  GoRoute _buildCalculationResultPage() {
    return GoRoute(
      name: Routes.calculationResultScreen.name,
      path: '/${Routes.calculationResultScreen.name}',
      builder: (BuildContext context, GoRouterState state) {
        final shortestPath = state.extra! as CalculationDataModel;

        return BlocProvider(
          create: (context) => CalculationResultCubit(
            shortestPath: shortestPath,
            getSavedTaskDataUsecase: serviceLocator.get(),
          ),
          child: const CalculationResultScreen(),
        );
      },
    );
  }
}
