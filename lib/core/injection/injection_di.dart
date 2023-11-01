import 'package:get_it/get_it.dart';
import 'injection_di.config.dart';
import 'package:injectable/injectable.dart';

GetIt locator = GetIt.instance;
/// This function configures the injection of the dependencies
@InjectableInit(
  initializerName: r'$initConfigInjection',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> injectionSetup() async{
  locator.pushNewScope();
  // Execute init config injection
  await $initConfigInjection(locator);
}
