part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthError extends AuthState {
  String? message;
  AuthError(this.message);
}

final class AuthLoading extends AuthState {}

final class Authenticated extends AuthState {
  UserModel userModel;
  Authenticated(this.userModel);
}

final class UnAuthenticated extends AuthState {}
