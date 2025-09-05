import 'package:flutter/material.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/app_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/custom_text_form_field.dart';

class SetPasswordForm extends StatelessWidget {
  const SetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return Form(
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
          Text('Password', style: AppStyles.leagueSpartanMedium20(context)),
          const SizedBox(height: 12),
          ObscureCustomTextFormField(onChanged: (data) {}),
          const SizedBox(height: 31),
          Text(
            'Confirm Password',
            style: AppStyles.leagueSpartanMedium20(context),
          ),
          const SizedBox(height: 12),
          ObscureCustomTextFormField(onChanged: (data) {}),
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
                        if (formKey.currentState!.validate()) {}
                      },
                      color: kSecondaryColor,
                      child: Text(
                        'Create New Password',
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
    );
  }
}
