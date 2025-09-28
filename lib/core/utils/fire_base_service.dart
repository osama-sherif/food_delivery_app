import 'package:firebase_auth/firebase_auth.dart';

class FireBaseService {
  final FirebaseAuth _user = FirebaseAuth.instance;
  Future<void> signUpUser({
    required String email,
    required String password,
  }) async {
    try {
      await _user.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      String errMessage = 'SignUp failed';
      if (e.code == 'weak-password') {
        errMessage = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        errMessage = 'The account already exists for that email.';
      }
      throw Exception(errMessage);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logInUser({
    required String email,
    required String password,
  }) async {
    try {
      await _user.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      String errMessage = 'logIn failed';
      if (e.code == 'user-not-found') {
        errMessage = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        errMessage = 'Wrong password provided for that user.';
      }
      throw Exception(errMessage);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signOut() async {
    await _user.signOut();
  }

  Future<void> sendPasswordResetEmail({required String email}) async {
    try {
      await _user.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw Exception('Failed to send password reset email');
    }
  }

  User? get currentUser => _user.currentUser;
}
