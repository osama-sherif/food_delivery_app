import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/fire_base_service.dart';
import 'package:food_delivery_app/features/authentication/data/repos/auth_repo_impl.dart';
import 'package:food_delivery_app/features/authentication/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/log_in_view.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/set_password_view.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/sign_up_view.dart';
import 'package:food_delivery_app/features/launch/presentation/views/launch_view.dart';
import 'package:food_delivery_app/features/launch/presentation/views/splash_view.dart';
import 'package:food_delivery_app/features/on_boarding/presentation/views/on_boarding_view.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      routes: {
        kLaunchViewRoute: (context) => const LaunchView(),
        kOnBoardingViewRoute: (context) => const OnBoardingView(),
        kLogInViewRoute: (context) => const LogInView(),
        kSignUpViewRoute: (context) => const SignUpView(),
        kSetPasswordViewRoute: (context) => const SetPasswordView(),
      },
    );
  }
}
