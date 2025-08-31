import 'package:flutter/material.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/app_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/auth_options.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/clickable_text.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/custom_text_form_field.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome', style: AppStyles.leagueSpartanSemiBold24(context)),
            const SizedBox(height: 32),
            Text(
              'Email or Mobile Number',
              style: AppStyles.leagueSpartanMedium20(context),
            ),
            const SizedBox(height: 4),
            CustomTextFormField(),
            const SizedBox(height: 12),
            Text('Password', style: AppStyles.leagueSpartanMedium20(context)),
            const SizedBox(height: 4),
            ObscureCustomTextFormField(onChanged: (data) {}),
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
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 196, maxHeight: 45),
                    child: AspectRatio(
                      aspectRatio: 196 / 45,
                      child: CustomButton(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            setState(() {});
                          }
                        },
                        color: kSecondaryColor,
                        child: Text(
                          'Log In',
                          style: AppStyles.leagueSpartanMedium24(
                            context,
                          ).copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'or log in with',
                    style: AppStyles.leagueSpartanLight14(
                      context,
                    ).copyWith(color: Color(0xFF252525)),
                  ),
                  const SizedBox(height: 4),
                  const AuthOptions(),
                  const SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: AppStyles.leagueSpartanLight14(
                          context,
                        ).copyWith(color: Color(0xFF391713)),
                      ),
                      SizedBox(width: 4),
                      ClickableText(
                        style: AppStyles.leagueSpartanLight14(context),
                        text: 'Sign Up',
                        onTap: () {
                          Navigator.pushNamed(context, kSignUpViewRoute);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
