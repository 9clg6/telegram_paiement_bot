import 'package:firedart/firestore/firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:telegram_paiement_bot/domain/enum/collections.dart';
import 'package:telegram_paiement_bot/foundation/env.dart';

/// The Firebase service.
@singleton
class FirebaseService {
  /// Is user registered
  bool isUserRegistered = false;

  /// Constructor
  ///   
  FirebaseService() {
    Firestore.initialize(Env.firebaseProjectId);
    print('🔥 Firebase Service initialisé');
  }

  /// Check if the user is registered.
  /// @param userId the user id
  /// @return true if the user is registered, false otherwise
  /// 
  Future<bool> checkIfUserRegistered(int userId) async {
    final document = await Firestore.instance
        .collection(Collections.users.id)
        .document(userId.toString())
        .get();

    return isUserRegistered = document.map.isNotEmpty;
  }

  /// Register the user.
  /// @param userId the user id
  /// 
  Future<void> registerUser(int userId) async {
    await Firestore.instance
        .collection(Collections.users.id)
        .document(userId.toString())
        .set({
      'hasWallet': true,
    });
  }
}
