import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/constatns.dart';
import 'package:food_delivery_app/core/utils/assets.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        cursorColor: kSecondaryColor,
        decoration: InputDecoration(
          suffixIconConstraints: BoxConstraints(
            maxWidth: 32.49,
            maxHeight: 13.74,
          ),
          fillColor: Color(0xFFF3E9B5),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class ObscureCustomTextFormField extends StatefulWidget {
  const ObscureCustomTextFormField({super.key});

  @override
  State<ObscureCustomTextFormField> createState() =>
      _ObscureCustomTextFormFieldState();
}

class _ObscureCustomTextFormFieldState
    extends State<ObscureCustomTextFormField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        cursorColor: kSecondaryColor,
        obscuringCharacter: '*',
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIconConstraints: BoxConstraints(
            maxWidth: 32.49,
            maxHeight: 13.74,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: obscureIcon(obscureText),
          ),
          fillColor: Color(0xFFF3E9B5),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget obscureIcon(bool obsureText) {
    return GestureDetector(
      onTap: () {
        setState(() {
          obscureText = !obsureText;
        });
      },
      child: SvgPicture.asset(obsureText ? Assets.showOn : Assets.showOff),
    );
  }
}
