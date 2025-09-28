import 'package:bloc/bloc.dart';
import 'package:food_delivery_app/features/authentication/data/model/user_model.dart';
import 'package:food_delivery_app/features/authentication/data/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;
  UserModel? _currentUser;
  AuthCubit(this._authRepo) : super(AuthInitial());

  UserModel? get currentUser => _currentUser;

  Future<void> checkAuth() async {
    emit(AuthLoading());
    final user = await _authRepo.getCurrentUser();
    if (user != null) {
      _currentUser = user;
      emit(Authenticated(user));
    } else {
      emit(UnAuthenticated());
    }
  }

  Future<void> logIn(String email, String password) async {
    try {
      emit(AuthLoading());
      final user = await _authRepo.logIn(email, password);
      if (user != null) {
        _currentUser = user;
        emit(Authenticated(user));
      } else {
        emit(UnAuthenticated());
      }
    } catch (e) {
      emit(AuthError('Login Failed: ${e.toString()}'));
      emit(UnAuthenticated());
    }
  }

  Future<void> signUp({
    required String name,
    required String email,
    required String password,
    required String mobileNumber,
    required String dateOfBirth,
  }) async {
    try {
      emit(AuthLoading());
      final user = await _authRepo.signUp(
        email: email,
        password: password,
        name: name,
        dateOfBith: dateOfBirth,
        mobileNumber: mobileNumber,
      );
      if (user != null) {
        _currentUser = user;
        emit(Authenticated(user));
      } else {
        emit(UnAuthenticated());
      }
    } catch (e) {
      emit(AuthError('Sign UP failed : ${e.toString()}'));
      emit(UnAuthenticated());
    }
  }

  Future<void> logOut() async {
    emit(AuthLoading());
    await _authRepo.logOut();
    emit(LoggedOut());
  }

  Future<void> sendPasswordResetEmail(String email) async {
    try {
      emit(AuthLoading());
      await _authRepo.sendPasswordResetEmail(email: email);
      emit(EmailSent());
    } catch (e) {
      emit(AuthError('Failed to send email: ${e.toString()}'));
      emit(UnAuthenticated());
    }
  }
}
