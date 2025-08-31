import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivery_app/features/authentication/data/model/user_model.dart';

class FireBaseService {
  final user = FirebaseAuth.instance;

  Future<void> signUpUser({required UserModel userModel}) async {
    await user.createUserWithEmailAndPassword(
      email: userModel.email,
      password: userModel.password,
    );
  }

  Future<void> logInUser({required UserModel userModel}) async {
    await user.signInWithEmailAndPassword(
      email: userModel.email,
      password: userModel.password,
    );
  }
}
