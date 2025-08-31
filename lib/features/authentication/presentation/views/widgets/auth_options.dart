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
        SvgPicture.asset(Assets.googleicon, width: 34),
        SizedBox(width: 4),
        SvgPicture.asset(Assets.facebook, width: 34),
        SizedBox(width: 4),
        SvgPicture.asset(Assets.fingerPrintIcon, width: 34),
      ],
    );
  }
}
