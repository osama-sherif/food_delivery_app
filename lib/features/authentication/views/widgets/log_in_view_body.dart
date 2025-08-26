import 'package:flutter/material.dart';

import 'package:food_delivery_app/core/widgets/cusotm_back_ground_container.dart';
import 'package:food_delivery_app/features/authentication/views/widgets/custom_header.dart';

import 'package:food_delivery_app/features/authentication/views/widgets/log_in_form.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 76),
        const CustomHeader(title: 'Log In'),
        const SizedBox(height: 59),
        CustomBackGroundContainer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 34),
            child: LogInForm(),
          ),
        ),
      ],
    );
  }
}
