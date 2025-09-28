import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/app_styles.dart';
import 'package:food_delivery_app/core/utils/assets.dart';

class OnBoardingTitleAndIcon extends StatelessWidget {
  const OnBoardingTitleAndIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 23),
        SvgPicture.asset(height: 36, Assets.transferDocumentIcon),
        SizedBox(height: 20),
        Text(
          'Order for Food',
          style: AppStyles.interBlack24(
            context,
          ).copyWith(color: kSecondaryColor),
        ),
      ],
    );
  }
}
