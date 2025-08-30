import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/widgets/cusotm_back_ground_container.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/custom_header.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/sign_up_form.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 44),
          const CustomHeader(title: 'New Account'),
          const SizedBox(height: 59),
          const CustomBackGroundContainer(
            child: Padding(
              padding: EdgeInsets.only(right: 36, left: 36, top: 34),
              child: SignUpForm(),
            ),
          ),
        ],
      ),
    );
  }
}
