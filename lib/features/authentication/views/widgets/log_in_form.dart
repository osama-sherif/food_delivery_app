import 'package:flutter/material.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/app_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/authentication/views/widgets/auth_options.dart';
import 'package:food_delivery_app/features/authentication/views/widgets/custom_text_form_field.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome', style: AppStyles.leagueSpartanSemiBold24(context)),
        const SizedBox(height: 52),
        Text(
          'Email or Mobile Number',
          style: AppStyles.leagueSpartanMedium20(context),
        ),
        const SizedBox(height: 10),
        const CustomTextFormField(),
        const SizedBox(height: 14),
        Text('Password', style: AppStyles.leagueSpartanMedium20(context)),
        const SizedBox(height: 10),
        const ObscureCustomTextFormField(),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Forget password?',
              style: AppStyles.leagueSpartanMedium14(
                context,
              ).copyWith(color: kSecondaryColor),
            ),
          ],
        ),
        SizedBox(height: 35),
        Center(
          child: Column(
            children: [
              SizedBox(
                width: 207,
                child: CustomButton(
                  onPressed: () {},
                  color: kSecondaryColor,
                  child: Text(
                    'Log In',
                    style: AppStyles.leagueSpartanMedium24(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 29),
              Text(
                'or log in with',
                style: AppStyles.leagueSpartanLight14(
                  context,
                ).copyWith(color: Color(0xFF252525)),
              ),
              const SizedBox(height: 9),
              const AuthOptions(),
              const SizedBox(height: 31),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: AppStyles.leagueSpartanLight14(context),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Sign Up',
                    style: AppStyles.leagueSpartanLight14(
                      context,
                    ).copyWith(color: kSecondaryColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
