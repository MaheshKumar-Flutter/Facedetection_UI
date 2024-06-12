import 'package:face_detection/utils/colors.dart';
import 'package:face_detection/widget/button.dart';
import 'package:flutter/material.dart';

class OnTapButton extends StatelessWidget {
  final VoidCallback onPressed;
  EdgeInsets? Padding;
  final String title;
  final Color color;
  final Color borderColor;
  final TextStyle? textStyle;
  final bool disabled;

  OnTapButton({
    super.key,
    required this.onPressed,
    this.Padding,
    required this.title,
    this.color = MyColors.primaryColor,
    this.borderColor = MyColors.OTPPincolor,
    this.textStyle,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Button(
      title,
      onPressed: disabled ? (){} : onPressed,
      color: disabled ? MyColors.primaryColor.withOpacity(0.52) : MyColors.primaryColor,
      borderColor: disabled ? MyColors.primaryColor.withOpacity(0.52) : MyColors.primaryColor,
      textStyle: const TextStyle(color: MyColors.whiteColor, fontSize: 16),
      padding: const EdgeInsets.symmetric(vertical: 13),
    );
  }
}


