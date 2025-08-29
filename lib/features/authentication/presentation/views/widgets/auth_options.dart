import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/utils/assets.dart';

class AuthOptions extends StatelessWidget {
  const AuthOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.googleicon),
        SizedBox(width: 9),
        SvgPicture.asset(Assets.facebook),
        SizedBox(width: 9),
        SvgPicture.asset(Assets.fingerPrintIcon),
      ],
    );
  }
}
