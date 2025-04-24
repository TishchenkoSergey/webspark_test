enum Routes {
  mainScreen('main-screen'),
  processScreen('process-screen');

  const Routes(this.name);

  final String name;

  @override
  String toString() => name;
}
