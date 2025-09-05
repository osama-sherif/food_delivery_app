part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLogInSuccess extends AuthState {
  final String errMessage;

  AuthLogInSuccess(this.errMessage);
}

final class AuthLogInFailed extends AuthState {
  final String errMessage;

  AuthLogInFailed(this.errMessage);
}

final class AuthLogInLoading extends AuthState {}

final class AuthSignUpSuccess extends AuthState {
  final String message;
  AuthSignUpSuccess(this.message);
}

final class AuthSignUpFailed extends AuthState {
  final String errMessage;

  AuthSignUpFailed(this.errMessage);
}

final class AuthSignUpLoading extends AuthState {}

final class AuthLogOut extends AuthState {}

final class AuthLoggedIn extends AuthState {
  final String id;

  AuthLoggedIn(this.id);
}
