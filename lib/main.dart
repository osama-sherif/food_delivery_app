import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/fire_base_service.dart';
import 'package:food_delivery_app/features/authentication/data/model/user_model.dart';
import 'package:food_delivery_app/features/authentication/data/repos/auth_repo_impl.dart';
import 'package:food_delivery_app/features/authentication/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/log_in_view.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/sign_up_view.dart';
import 'package:food_delivery_app/features/launch/presentation/views/launch_view.dart';
import 'package:food_delivery_app/features/launch/presentation/views/splash_view.dart';
import 'package:food_delivery_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AuthCubit(AuthRepoImpl(FireBaseService()))..checkAuthState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashView(),
        routes: {
          kLaunchViewRoute: (context) => const LaunchView(),
          kOnBoardingViewRoute: (context) => const OnBoardingView(),
          kLogInViewRoute: (context) => const LogInView(),
          kSignUpViewRoute: (context) => const SignUpView(),
        },
      ),
    );
  }
}
