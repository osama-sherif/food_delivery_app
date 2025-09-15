import 'package:bloc/bloc.dart';
import 'package:food_delivery_app/features/authentication/data/model/user_model.dart';
import 'package:food_delivery_app/features/authentication/data/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;
  UserModel? _currentUser;
  AuthCubit(this._authRepo, this._currentUser) : super(AuthInitial());

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

  Future<void> signUp(
    String name,
    String email,
    String password,
    String phoneNumber,
    String dateOfBirth,
  ) async {
    try {
      emit(AuthLoading());
      final user = await _authRepo.signUp(
        email,
        password,
        name,
        dateOfBirth,
        phoneNumber,
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
    emit(UnAuthenticated());
  }
}
