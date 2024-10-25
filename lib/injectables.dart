import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rahul_test_getx/injectables.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies(String env) => getIt.init(environment: env);

abstract class Environment {
  static const dev = "dev";
  static const prod = "prod";
}
