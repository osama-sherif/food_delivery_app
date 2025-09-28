import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/app_styles.dart';
import 'package:food_delivery_app/core/utils/assets.dart';
import 'package:food_delivery_app/core/widgets/cusotm_back_ground_container.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/on_boarding/presentation/views/widgets/dot_indector.dart';
import 'package:food_delivery_app/features/on_boarding/presentation/views/widgets/on_boarding_title_and_icon.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Assets.pizzaImage),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 53),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Skip',
                  style: AppStyles.leagueSpartanSemiBold15(
                    context,
                  ).copyWith(color: kSecondaryColor),
                ),
                SizedBox(width: 7),
                SvgPicture.asset(Assets.nextIconArrow),
                SizedBox(width: 35),
              ],
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * .5),
            CustomBackGroundContainer(
              child: Column(
                children: [
                  OnBoardingTitleAndIcon(),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 61.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.',
                      style: AppStyles.leagueSpartanMedium14(context),
                    ),
                  ),
                  SizedBox(height: 30),
                  DotIndecator(),
                  SizedBox(height: 32),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 133, maxHeight: 36),
                    child: AspectRatio(
                      aspectRatio: 133 / 36,
                      child: CustomButton(
                        color: kSecondaryColor,
                        child: Text(
                          'Next',
                          style: AppStyles.leagueSpartanMedium17(
                            context,
                          ).copyWith(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
