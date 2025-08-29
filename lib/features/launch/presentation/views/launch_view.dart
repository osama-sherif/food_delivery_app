import 'package:flutter/material.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/features/launch/presentation/views/widgets/launch_view_body.dart';

class LaunchView extends StatelessWidget {
  const LaunchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kSecondaryColor,
      body: LaunchViewBody(),
    );
  }
}
