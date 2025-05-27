import 'dart:async';

import 'package:core_authenticator/authenticator.dart';
import 'package:core_model/auth.dart' as model;
import 'package:firebase_auth/firebase_auth.dart';

final class FirebaseAuthenticator implements Authenticator {
  const FirebaseAuthenticator({required FirebaseAuth firebaseAuth})
    : _firebaseAuth = firebaseAuth;

  final FirebaseAuth _firebaseAuth;

  @override
  model.AuthState get authState => _firebaseAuth.authState;

  @override
  String? get currentUserId => _firebaseAuth.currentUser?.uid;

  @override
  Future<String?> get idToken async => _firebaseAuth.currentUser?.getIdToken();

  Future<UserCredential> signInAnonymously() async =>
      _firebaseAuth.signInAnonymously();

  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async => _firebaseAuth.signInWithEmailAndPassword(
    email: email,
    password: password,
  );

  @override
  Future<void> signOut() async => _firebaseAuth.signOut();
}

extension FirebaseAuthX on FirebaseAuth {
  model.AuthState get authState {
    return currentUser != null
        ? model.AuthState.authenticated(user: currentUser!.asModel())
        : const model.AuthState.unauthenticated();
  }
}

extension UserX on User {
  model.User asModel() {
    return model.User(id: uid, email: email!);
  }
}
