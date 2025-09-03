import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivery_app/core/utils/fire_base_service.dart';
import 'package:food_delivery_app/features/authentication/data/model/user_model.dart';
import 'package:food_delivery_app/features/authentication/data/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FireBaseService _fireBaseService;

  AuthRepoImpl(this._fireBaseService);
  @override
  Future<void> logInUserWithEmailAndPassword({required UserModel user}) async {
    try {
      await _fireBaseService.logInUser(userModel: user);
    } on FirebaseAuthException catch (e) {
      String errMessage = 'Un known error';
      if (e.code == 'user-not-found') {
        errMessage = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        errMessage = 'Wrong password provided for that user.';
      }
      throw Exception(errMessage);
    }
  }

  @override
  Future<void> signUpUserWithEmailAndPassword({required UserModel user}) async {
    try {
      await _fireBaseService.signUpUser(userModel: user);
    } on FirebaseAuthException catch (e) {
      String errMessage = 'Un known error';
      if (e.code == 'weak-password') {
        errMessage = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        errMessage = 'The account already exists for that email.';
      }
      throw Exception(errMessage);
    }
  }

  @override
  Future<void> signOut() async {
    await _fireBaseService.signOut();
  }

  @override
  User? getCurrentUser() {
    return _fireBaseService.currentUser;
  }
}
