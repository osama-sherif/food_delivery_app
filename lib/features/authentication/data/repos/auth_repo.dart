import 'package:food_delivery_app/features/authentication/data/model/user_model.dart';

abstract class AuthRepo {
  Future<UserModel?> signUp({
    required String email,
    required String password,
    required String name,
    required String dateOfBith,
    required String mobileNumber,
  });
  Future<UserModel?> logIn(String email, String password);
  Future<UserModel?> getCurrentUser();
  Future<void> sendPasswordResetEmail({required String email});
  Future<void> logOut();
}
