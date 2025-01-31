import 'package:dotenv/dotenv.dart';

class Env {
  static late final DotEnv _env;
  
  static void load() {
    _env = DotEnv(includePlatformEnvironment: true)..load();
  }

  static String get botToken {
    final token = _env['TOKENTELEGRAM'];
    if (token == null || token.isEmpty) {
      throw Exception('TOKEN n\'est pas défini dans le fichier .env');
    }
    return token;
  }

  static String get firebaseToken {
    final token = _env['TOKENFIREBASE'];
    if (token == null || token.isEmpty) {
      throw Exception('TOKENFIREBASE n\'est pas défini dans le fichier .env');
    }
    return token;
  }

  static String get firebaseProjectId {
    final projectId = _env['FIREBASEPROJECTID'];
    if (projectId == null || projectId.isEmpty) {
      throw Exception('FIREBASEPROJECTID n\'est pas défini dans le fichier .env');
    }
    return projectId;
  }

  static String get nowPaymentToken {
    final token = _env['NOWPAYMENTSTOKEN'];
    if (token == null || token.isEmpty) {
      throw Exception('NOWPAYMENTSTOKEN n\'est pas défini dans le fichier .env');
    }
    return token;
  }

  static String get nowPaymentsEmail {
    final email = _env['NOWPAYMENTSEMAIL'];
    if (email == null || email.isEmpty) {
      throw Exception('NOWPAYMENTSEMAIL n\'est pas défini dans le fichier .env');
    }
    return email;
  }

  static String get nowPaymentsPassword {
    final password = _env['NOWPAYMENTSPASSWORD'];
    if (password == null || password.isEmpty) {
      throw Exception('NOWPAYMENTSPASSWORD n\'est pas défini dans le fichier .env');
    }
    return password;
  }

  static String get shopName {
    final shopName = _env['SHOPNAME'];
    if (shopName == null || shopName.isEmpty) {
      throw Exception('SHOPNAME n\'est pas défini dans le fichier .env');
    }
    return shopName;
  }
}
