import 'package:flutter/material.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/features/authentication/views/log_in_view.dart';
import 'package:food_delivery_app/features/launch/views/launch_view.dart';
import 'package:food_delivery_app/features/launch/views/splash_view.dart';
import 'package:food_delivery_app/features/on_boarding/views/on_boarding_view.dart';

void main() {
  runApp(const FoodDeliveryApp());
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
