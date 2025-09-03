import 'package:flutter/material.dart';

import 'package:food_delivery_app/constatns.dart';

import 'package:food_delivery_app/features/launch/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: kPrimaryColor, body: SplashViewBody());
  }
}
