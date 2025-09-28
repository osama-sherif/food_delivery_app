import 'package:flutter/material.dart';
import 'package:food_delivery_app/constatns.dart';

class DotIndecator extends StatelessWidget {
  const DotIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 20,
      decoration: ShapeDecoration(
        color: kSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
    );
  }
}
