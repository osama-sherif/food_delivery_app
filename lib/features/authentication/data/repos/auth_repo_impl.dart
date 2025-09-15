import 'package:food_delivery_app/core/utils/fire_base_service.dart';
import 'package:food_delivery_app/features/authentication/data/model/user_model.dart';
import 'package:food_delivery_app/features/authentication/data/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FireBaseService _fireBaseService = FireBaseService();

  @override
  Future<UserModel?> logIn(String email, String password) async {
    try {
      await _fireBaseService.logInUser(email: email, password: password);
      UserModel user = UserModel(
        uid: _fireBaseService.currentUser?.uid ?? '',
        email: _fireBaseService.currentUser?.email ?? '',
      );
      return user;
    } catch (e) {
      throw Exception('Failed to log in: $e');
    }
  }

  @override
  Future<UserModel?> signUp(
    String email,
    String password,
    String name,
    String dateOfBith,
    String phoneNumber,
  ) async {
    try {
      // logIn user
      await _fireBaseService.signUpUser(email: email, password: password);

      // create user
      UserModel user = UserModel(
        uid: _fireBaseService.currentUser?.uid ?? '',
        email: _fireBaseService.currentUser?.email ?? '',
        name: name,
        dateOfBirth: dateOfBith,
        phoneNumber: phoneNumber,
      );
      return user;
    } catch (e) {
      throw Exception('Failed to sign up: $e');
    }
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    final fireBaseUser = _fireBaseService.currentUser;

    if (fireBaseUser != null) {
      return UserModel(email: fireBaseUser.email!, uid: fireBaseUser.uid);
    } else {
      return null;
    }
  }

  @override
  Future<void> logOut() async {
    await _fireBaseService.signOut();
  }
}
