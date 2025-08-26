import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/utils/app_styles.dart';
import 'package:food_delivery_app/core/utils/assets.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Spacer(),
        SvgPicture.asset(Assets.backIconArrow),
        Spacer(flex: 2),
        Text(
          maxLines: 1,
          textAlign: TextAlign.center,
          title,
          style: AppStyles.leagueSpartanBold28(
            context,
          ).copyWith(color: Colors.white),
        ),
        Spacer(flex: 3),
      ],
    );
  }
}
