import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

import 'package:get_it/get_it.dart';

import 'package:webspark_test/features/features.dart';
import 'package:webspark_test/features/main_screen/bloc/main_cubit.dart';

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
      pageBuilder: (BuildContext context, GoRouterState state) => const CupertinoPage(
        child: ProcessScreen(),
      ),
    );
  }
}
