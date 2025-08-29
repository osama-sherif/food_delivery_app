import 'package:flutter/material.dart';

import 'package:food_delivery_app/core/widgets/cusotm_back_ground_container.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/custom_header.dart';

import 'package:food_delivery_app/features/authentication/presentation/views/widgets/log_in_form.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 44),
          const CustomHeader(title: 'Log In'),
          const SizedBox(height: 55),
          CustomBackGroundContainer(
            child: const Padding(
              padding: EdgeInsets.only(right: 36, left: 36, top: 34),
              child: LogInForm(),
            ),
          ),
        ],
      ),
    );
  }
}
