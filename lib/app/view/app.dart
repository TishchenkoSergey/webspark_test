import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';

import 'package:webspark_test/app/route/route.dart';

class App extends StatefulWidget {
  const App({
    required this.serviceLocator,
    super.key,
  });

  final GetIt serviceLocator;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final route = AppRoute(
    serviceLocator: widget.serviceLocator,
  ).build(context);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      routeInformationProvider: route.routeInformationProvider,
      routeInformationParser: route.routeInformationParser,
      routerDelegate: route.routerDelegate,
    );
  }
}
