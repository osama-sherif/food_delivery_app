import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/authentication/views/widgets/custom_header.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 76),
        CustomHeader(title: 'Log In'),
      ],
    );
  }
}
