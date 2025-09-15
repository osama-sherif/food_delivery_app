import 'package:food_delivery_app/features/authentication/data/model/user_model.dart';

abstract class AuthRepo {
  Future<UserModel?> signUp(
    String email,
    String password,
    String name,
    String dateOfBith,
    String mobileNumber,
  );
  Future<UserModel?> logIn(String email, String password);
  Future<UserModel?> getCurrentUser();
  Future<void> logOut();
}
