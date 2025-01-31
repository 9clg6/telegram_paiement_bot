import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:telegram_paiement_bot/foundation/app_config.dart';

import 'injector.config.dart';

/// Injector instance
final injector = GetIt.instance;

/// Configure the dependencies
/// 
@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
  ignoreUnregisteredTypes: [AppConfig]
)
void configureDependencies() => injector.init();
