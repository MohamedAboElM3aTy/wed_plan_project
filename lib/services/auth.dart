import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  User get currentUser;
  Future<User> registerWithEmailAndPassword(String email, String password);
  Future<User> loginWithEmailAndPassword(String email, String password);
  Future<void> logout();
}

class Auth implements AuthBase {
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<User> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      final userAuth = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userAuth.user;
    } catch (e) {
      print(
        e.toString(),
      );
      return null;
    }
  }

  @override
  Future<User> loginWithEmailAndPassword(String email, String password) async {
    try {
      final userAuth = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userAuth.user;
    } catch (e) {
      print(
        e.toString(),
      );
      return null;
    }
  }

  @override
  User get currentUser => _firebaseAuth.currentUser;

  @override
  Future<void> logout() async => await _firebaseAuth.signOut();
}
