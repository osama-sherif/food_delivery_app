import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivery_app/features/authentication/data/model/user_model.dart';

abstract class AuthRepo {
  Future<void> signUpUserWithEmailAndPassword({required UserModel user});
  Future<void> logInUserWithEmailAndPassword({required UserModel user});

  Future<void> signOut();
  User? getCurrentUser();
}
