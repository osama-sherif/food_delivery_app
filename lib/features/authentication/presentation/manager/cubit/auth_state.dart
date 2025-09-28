part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthError extends AuthState {
  final String? message;
  AuthError(this.message);
}

final class AuthLoading extends AuthState {}

final class Authenticated extends AuthState {
  final UserModel userModel;
  Authenticated(this.userModel);
}

final class UnAuthenticated extends AuthState {}

final class LoggedOut extends AuthState {}

final class EmailSent extends AuthState {}
