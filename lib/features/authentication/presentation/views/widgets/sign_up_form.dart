import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/app_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';

import 'package:food_delivery_app/features/authentication/presentation/views/widgets/auth_options.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/clickable_text.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/custom_text_form_field.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/terms_and_policy.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? email, password;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Full name',
              style: AppStyles.leagueSpartanMedium20(context),
            ),
          ),
          const SizedBox(height: 2),
          const CustomTextFormField(),
          const SizedBox(height: 4),
          Text('Password', style: AppStyles.leagueSpartanMedium20(context)),
          const SizedBox(height: 2),
          ObscureCustomTextFormField(
            onChanged: (data) {
              password = data;
            },
          ),
          const SizedBox(height: 4),
          Text('Email', style: AppStyles.leagueSpartanMedium20(context)),
          const SizedBox(height: 2),
          CustomTextFormField(
            onChanged: (data) {
              email = data;
            },
          ),
          const SizedBox(height: 4),
          Text('MobileNumber', style: AppStyles.leagueSpartanMedium20(context)),
          const SizedBox(height: 2),
          CustomTextFormField(),
          const SizedBox(height: 4),
          Text(
            'Date of birth',
            style: AppStyles.leagueSpartanMedium20(context),
          ),
          const SizedBox(height: 4),
          CustomTextFormField(),
          const SizedBox(height: 14),
          const Center(child: TermsAndPolicy()),
          const SizedBox(height: 6),
          Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 207, maxHeight: 45),
                child: AspectRatio(
                  aspectRatio: 207 / 45,
                  child: CustomButton(
                    onPressed: () {
                      formKey.currentState!.validate();
                    },
                    color: kSecondaryColor,
                    child: Text(
                      'Sign Up',
                      style: AppStyles.leagueSpartanMedium24(
                        context,
                      ).copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 9),
              Text(
                'or sign up with',
                style: AppStyles.leagueSpartanLight12(context),
              ),
              const SizedBox(height: 9),
              const AuthOptions(),
              const SizedBox(height: 9),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: AppStyles.leagueSpartanLight12(context),
                  ),
                  ClickableText(
                    onTap: () => Navigator.pushNamed(context, kLogInViewRoute),
                    text: ' Log in',
                    style: AppStyles.leagueSpartanMedium12(context),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
