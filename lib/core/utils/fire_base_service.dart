import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivery_app/features/authentication/data/model/user_model.dart';

class FireBaseService {
  final FirebaseAuth _user = FirebaseAuth.instance;
  Future<User?> signUpUser({required UserModel userModel}) async {
    try {
      final credential = await _user.createUserWithEmailAndPassword(
        email: userModel.email,
        password: userModel.password,
      );
      return credential.user;
    } catch (e) {
      rethrow;
    }
  }

  Future<User?> logInUser({required UserModel userModel}) async {
    try {
      final credential = await _user.signInWithEmailAndPassword(
        email: userModel.email,
        password: userModel.password,
      );
      return credential.user;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signOut() async {
    await _user.signOut();
  }

  User? get currentUser => _user.currentUser;
}
