import 'package:flutter/material.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/app_styles.dart';

class ClickableText extends StatelessWidget {
  const ClickableText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        text,
        style: AppStyles.leagueSpartanLight14(
          context,
        ).copyWith(color: kSecondaryColor),
      ),
    );
  }
}
