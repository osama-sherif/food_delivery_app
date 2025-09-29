import 'package:flutter/material.dart';
import 'package:food_delivery_app/constatns.dart';

class CustomDotIndecator extends StatelessWidget {
  final int pageIndex;
  const CustomDotIndecator({super.key, required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomDot(isActive: pageIndex == 0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: CustomDot(isActive: pageIndex == 1),
        ),
        CustomDot(isActive: pageIndex == 2),
      ],
    );
  }
}

class CustomDot extends StatelessWidget {
  final bool isActive;
  const CustomDot({super.key, this.isActive = true});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: 4,
      width: 20,
      decoration: ShapeDecoration(
        color: isActive ? kSecondaryColor : kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
    );
  }
}
