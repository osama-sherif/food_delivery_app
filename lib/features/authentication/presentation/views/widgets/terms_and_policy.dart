import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_styles.dart';
import 'package:food_delivery_app/features/authentication/presentation/views/widgets/clickable_text.dart';

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
        ClickableText(
          text: 'Terms of Use and Privacy Policy.',
          style: AppStyles.leagueSpartanMedium12(context),
        ),
      ],
    );
  }
}
