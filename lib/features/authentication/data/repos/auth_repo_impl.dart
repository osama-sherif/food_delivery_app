import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivery_app/core/utils/fire_base_service.dart';
import 'package:food_delivery_app/features/authentication/data/model/user_model.dart';
import 'package:food_delivery_app/features/authentication/data/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<void> logInUserWithEmailAndPassword({required UserModel user}) async {
    try {
      await FireBaseService().logInUser(userModel: user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Future<void> signUpUserWithEmailAndPassword({required UserModel user}) async {
    try {
      await FireBaseService().signUpUser(userModel: user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
