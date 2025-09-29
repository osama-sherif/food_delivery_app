import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/app_styles.dart';

class OnBoardingTitleAndIcon extends StatelessWidget {
  final String title, iconPath;
  const OnBoardingTitleAndIcon({
    super.key,
    required this.title,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 23),
        SvgPicture.asset(height: 34, width: 34, iconPath),
        SizedBox(height: 20),
        Text(
          title,
          style: AppStyles.interBlack24(
            context,
          ).copyWith(color: kSecondaryColor),
        ),
      ],
    );
  }
}
