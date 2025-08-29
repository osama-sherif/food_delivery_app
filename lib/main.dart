import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/log_in_view.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      routes: {
        kLaunchViewRoute: (context) => const LaunchView(),
        kOnBoardingViewRoute: (context) => const OnBoardingView(),
        kLogInViewRoute: (context) => const LogInView(),
      },
    );
  }
}
