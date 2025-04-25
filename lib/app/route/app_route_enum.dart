enum Routes {
  mainScreen('main-screen'),
  processScreen('process-screen'),
  resultListScreen('result-list-screen');

  const Routes(this.name);

  final String name;

  @override
  String toString() => name;
}
