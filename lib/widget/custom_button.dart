import 'package:assigment/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.onTap,
      required this.textButton,
      required this.textColor,
      required this.sizeTextButton,
      required this.fontFamily,
      required this.buttonColor,
      this.radiusOfButton = 0,
      required this.height,
      required this.weight});
  final void Function()? onTap;
  final String textButton;
  final Color textColor;
  final Color buttonColor;
  final double sizeTextButton;
  final String fontFamily;
  final double radiusOfButton;
  final double height;
  final double weight;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: weight,
          height: height,
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(radiusOfButton)),
          child: Center(
            child: CustomText(
                text: textButton,
                color: textColor,
                size: sizeTextButton,
                fontFamily: fontFamily),
          ),
        ));
  }
}
