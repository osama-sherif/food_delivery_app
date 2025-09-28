import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/app_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/authentication/presentation/manager/cubit/auth_cubit.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/custom_text_form_field.dart';

class SetPasswordForm extends StatefulWidget {
  const SetPasswordForm({super.key});

  @override
  State<SetPasswordForm> createState() => _SetPasswordFormState();
}

class _SetPasswordFormState extends State<SetPasswordForm> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is EmailSent) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Password reset email sent to ${emailController.text}',
              ),
              backgroundColor: kPrimaryColor,
            ),
          );
          Navigator.pop(context);
        } else if (state is AuthError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message ?? 'An error occurred'),
              backgroundColor: kSecondaryColor,
            ),
          );
        }
      },
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
              style: AppStyles.leagueSpartanLight14(
                context,
              ).copyWith(color: Color(0xff252525)),
            ),
            const SizedBox(height: 43),
            Text(
              'Enter your email',
              style: AppStyles.leagueSpartanMedium20(context),
            ),
            const SizedBox(height: 12),
            CustomTextFormField(controller: emailController),

            const SizedBox(height: 57),

            Center(
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 198, maxHeight: 36),
                    child: AspectRatio(
                      aspectRatio: 198 / 35,
                      child: CustomButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            BlocProvider.of<AuthCubit>(
                              context,
                            ).sendPasswordResetEmail(emailController.text);
                          }
                        },
                        color: kSecondaryColor,
                        child: Text(
                          'Send Email',
                          style: AppStyles.leagueSpartanMedium17(
                            context,
                          ).copyWith(color: Colors.white),
                        ),
                      ),
                    ),
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
