import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/app_styles.dart';
import 'package:food_delivery_app/core/utils/icons.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';

class LaunchViewBody extends StatefulWidget {
  const LaunchViewBody({super.key});

  @override
  State<LaunchViewBody> createState() => _LaunchViewBodyState();
}

class _LaunchViewBodyState extends State<LaunchViewBody> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(Assets.iconsGroup271Icon),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 49.0),
          child: Text(
            textAlign: TextAlign.center,
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
            style: AppStyles.leagueSpartanMedium17(
              context,
            ).copyWith(color: Colors.white, fontSize: 14),
          ),
        ),
        SizedBox(height: 45),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 93.0),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 207 / 45,
                child: CustomButton(
                  color: kPrimaryColor,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, kLogInViewRoute);
                  },
                  child: Text(
                    'Log In',
                    style: AppStyles.leagueSpartanMedium24(
                      context,
                    ).copyWith(color: kSecondaryColor),
                  ),
                ),
              ),
              SizedBox(height: 4),
              AspectRatio(
                aspectRatio: 207 / 45,
                child: CustomButton(
                  color: Color(0xFFF3E9B5),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, kSignUpViewRoute);
                  },
                  child: Text(
                    'Sign Up',
                    style: AppStyles.leagueSpartanMedium24(
                      context,
                    ).copyWith(color: kSecondaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
