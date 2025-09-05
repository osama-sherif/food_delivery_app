import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/authentication/data/model/user_model.dart';
import 'package:food_delivery_app/features/authentication/data/repos/auth_repo.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;
  AuthCubit(this._authRepo) : super(AuthInitial());

  Future<void> signUp(
    String name,
    String phoneNumber,
    String dateOfBirth, {
    required String email,
    required String password,
  }) async {
    emit(AuthSignUpLoading());
    try {
      await _authRepo.signUpUserWithEmailAndPassword(
        user: UserModel(
          name: name,
          phoneNumber: phoneNumber,
          dateOfBirth: dateOfBirth,
          email: email,
          password: password,
        ),
      );
      emit(AuthSignUpSuccess('Sign UP successfully'));
    } catch (e) {
      emit(AuthSignUpFailed(e.toString()));
    }
  }

  Future<void> logIn({required String email, required String password}) async {
    emit(AuthLogInLoading());
    try {
      await _authRepo.logInUserWithEmailAndPassword(
        user: UserModel(email: email, password: password),
      );
      emit(AuthLogInSuccess('Log In Successfully'));
    } catch (e) {
      emit(AuthLogInFailed(e.toString()));
    }
  }

  Future<void> checkAuthState() async {
    emit(AuthLogInLoading());
    try {
      if (_authRepo.isUserLoggedIn()) {
        final user = await _authRepo.getCurrentUser();
        emit(AuthLoggedIn(user!.uid));
      } else {
        emit(AuthLogOut());
      }
    } catch (e) {
      emit(AuthLogInFailed(e.toString()));
    }
  }
}
