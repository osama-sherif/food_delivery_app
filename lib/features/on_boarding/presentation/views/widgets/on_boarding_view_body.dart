import 'package:flutter/material.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/app_styles.dart';
import 'package:food_delivery_app/core/utils/assets.dart';
import 'package:food_delivery_app/core/widgets/cusotm_back_ground_container.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/on_boarding/presentation/views/widgets/dot_indector.dart';
import 'package:food_delivery_app/features/on_boarding/presentation/views/widgets/on_boarding_image.dart';

import 'package:food_delivery_app/features/on_boarding/presentation/views/widgets/on_boarding_title_and_icon.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final PageController _imageController = PageController();
  final PageController _iconAndTitleController = PageController();
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: PageView(
              controller: _imageController,
              onPageChanged: (value) {
                animateToPageView(value, _iconAndTitleController);
                setState(() {
                  pageIndex = value.round();
                });
              },
              children: [
                OnBoardingImage(imagePath: Assets.pizzaImage),
                OnBoardingImage(imagePath: Assets.iceCreamImage),
                OnBoardingImage(imagePath: Assets.coffeeImage),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: CustomBackGroundContainer(
              child: Column(
                children: [
                  Expanded(
                    child: PageView(
                      controller: _iconAndTitleController,
                      onPageChanged: (value) {
                        animateToPageView(value, _imageController);
                      },
                      children: [
                        OnBoardingTitleAndIcon(
                          title: 'Order for Food',
                          iconPath: Assets.transferDocumentIcon,
                        ),
                        OnBoardingTitleAndIcon(
                          title: 'Easy Payment',
                          iconPath: Assets.cardIcon,
                        ),
                        OnBoardingTitleAndIcon(
                          title: 'Fast Delivery',
                          iconPath: Assets.deliverBoyIcon,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 19),
                  CustomDotIndecator(pageIndex: pageIndex),
                  const SizedBox(height: 32),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 133, maxHeight: 36),
                    child: AspectRatio(
                      aspectRatio: 133 / 36,
                      child: CustomButton(
                        color: kSecondaryColor,
                        onPressed: pageIndex == 2
                            ? () {
                                Navigator.pushReplacementNamed(
                                  context,
                                  kLaunchViewRoute,
                                );
                              }
                            : () {
                                setState(() {
                                  animateToPageView(
                                    pageIndex + 1,
                                    _iconAndTitleController,
                                  );
                                  animateToPageView(
                                    pageIndex + 1,
                                    _imageController,
                                  );
                                });
                              },
                        child: Text(
                          pageIndex == 2 ? 'Get Started' : 'Next',
                          style: AppStyles.leagueSpartanMedium17(
                            context,
                          ).copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> animateToPageView(int value, PageController controller) {
  return controller.animateToPage(
    duration: Duration(milliseconds: 250),
    curve: Curves.linear,
    value.round(),
  );
}
