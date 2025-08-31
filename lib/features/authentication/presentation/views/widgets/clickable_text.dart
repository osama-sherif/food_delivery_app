import 'package:flutter/material.dart';
import 'package:food_delivery_app/constatns.dart';

class ClickableText extends StatelessWidget {
  const ClickableText({
    super.key,
    required this.text,
    this.onTap,
    required this.style,
  });
  final String text;
  final void Function()? onTap;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(text, style: style.copyWith(color: kSecondaryColor)),
    );
  }
}
