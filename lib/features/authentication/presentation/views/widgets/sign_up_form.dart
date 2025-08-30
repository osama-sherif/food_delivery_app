import 'package:flutter/material.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/app_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/auth_options.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/clickable_text.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/custom_text_form_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
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
          const SizedBox(height: 6),
          const CustomTextFormField(),
          const SizedBox(height: 11),
          Text('Password', style: AppStyles.leagueSpartanMedium20(context)),
          const SizedBox(height: 6),
          const ObscureCustomTextFormField(),
          const SizedBox(height: 11),
          Text('Email', style: AppStyles.leagueSpartanMedium20(context)),
          const SizedBox(height: 6),
          const CustomTextFormField(),
          const SizedBox(height: 11),
          Text('MobileNumber', style: AppStyles.leagueSpartanMedium20(context)),
          const SizedBox(height: 6),
          const CustomTextFormField(),
          const SizedBox(height: 11),
          Text(
            'Date of birth',
            style: AppStyles.leagueSpartanMedium20(context),
          ),
          const SizedBox(height: 9),
          const CustomTextFormField(),
          const SizedBox(height: 20),
          const Center(child: TermsAndPolicy()),
          Column(
            children: [
              SizedBox(
                width: 207,
                child: CustomButton(
                  onPressed: () {},
                  color: kSecondaryColor,
                  child: Text(
                    'Sign Up',
                    style: AppStyles.leagueSpartanMedium24(
                      context,
                    ).copyWith(color: Colors.white),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: AppStyles.leagueSpartanLight12(context),
                  ),
                  const ClickableText(text: ' Log in'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TermsAndPolicy extends StatelessWidget {
  const TermsAndPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'By continuing, you agree to',
          style: AppStyles.leagueSpartanLight12(context),
        ),
        ClickableText(text: 'Terms of Use and Privacy Policy.'),
      ],
    );
  }
}
