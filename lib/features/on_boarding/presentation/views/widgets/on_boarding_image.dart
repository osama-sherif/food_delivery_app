import 'package:flutter/material.dart';

class OnBoardingImage extends StatelessWidget {
  final String imagePath;
  const OnBoardingImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
        alignment: AlignmentGeometry.xy(0.0, -0.8),
      ),
    );
  }
}
