import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/authentication/data/model/user_model.dart';
import 'package:food_delivery_app/features/authentication/data/repos/auth_repo.dart';
import 'package:meta/meta.dart';

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
          name,
          phoneNumber,
          dateOfBirth,
          email: email,
          password: password,
        ),
      );
      emit(AuthSignUpSuccess('Sign UP successfully'));
    } catch (e) {
      emit(AuthSignUpFailed(e.toString()));
    }
  }
}
