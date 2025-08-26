import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_styles.dart';
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
      ],
    );
  }
}
