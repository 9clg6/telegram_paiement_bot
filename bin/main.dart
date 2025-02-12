// @dart=3.2

import 'package:telegram_paiement_bot/foundation/app_config.dart';
import 'package:telegram_paiement_bot/foundation/bot.dart';
import 'package:telegram_paiement_bot/foundation/env.dart';
import 'package:telegram_paiement_bot/foundation/injection/injector.dart';

/// The main function.
///
Future<void> main(List<String> arguments) async {
  try {
    Env.load();
    print('🔐 Token chargé');

    injector.registerSingleton<AppConfig>(AppConfig.fromEnvironment());
    await configureDependencies();

    await TelegramBot().start();
  } on Exception catch (e) {
    print(e.toString());
  }
}
