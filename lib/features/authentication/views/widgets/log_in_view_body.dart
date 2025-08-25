import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/widgets/cusotm_back_ground_container.dart';
import 'package:food_delivery_app/features/authentication/views/widgets/custom_header.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 76),
        const CustomHeader(title: 'Log In'),
        const SizedBox(height: 59),
        const CustomBackGroundContainer(),
      ],
    );
  }
}
