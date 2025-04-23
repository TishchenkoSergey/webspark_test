import 'package:webspark_test/app/app.dart';
import 'package:webspark_test/bootstrap.dart';

void main() {
  bootstrap(
    (result) {
      return App(serviceLocator: result.serviceLocator);
    },
  );
}
