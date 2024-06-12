import 'package:flutter/material.dart';
import 'package:face_detection/utils/colors.dart';
import 'package:face_detection/utils/style.dart';

import '../utils/spacing.dart';

TextStyle _buttonTextStyle = MyTextStyle.medium;
TextStyle _outlineTextStyle = const TextStyle(
    fontSize: 14,
    fontFamily: MyTextStyle.robotoFamily,
    fontWeight: FontWeight.w500,
    color: MyColors.freeColor,
    letterSpacing: 1.5);

class Button extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final double width;
  final double height;
  final VoidCallback onPressed;
  final Color color;
  final Color borderColor;
  final BorderRadius? borderRadius;
  final bool disabled;
  Widget? icon = Container();
  bool isLoading = false;

  bool isOutline = false;

  Button(this.text,
      {super.key,
      this.textStyle,
      this.width = 82,
      this.height = 44,
      required this.onPressed,
      this.color = MyColors.whiteColor,
      this.borderColor = MyColors.whiteColor,
      this.borderRadius,
      this.disabled = false,
      this.isLoading = false,
      this.icon,
      this.padding});

  Button.outline(this.text,
      {super.key,
      this.textStyle,
      this.width = 82,
      this.height = 44,
      required this.onPressed,
      this.color = MyColors.whiteColor,
      this.borderColor = MyColors.deepCerisePink,
      this.borderRadius,
      this.disabled = false,
      this.icon,
      this.padding}) {
    isOutline = true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      key: key,
      elevation: 0.0,
      height: height,
      minWidth: width,
      onPressed: disabled ? null : onPressed,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      color: disabled ? color.withOpacity(0.4) : color,
      padding:
          padding ?? const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      shape: RoundedRectangleBorder(
        side: BorderSide(
            color: disabled ? borderColor.withOpacity(0.3) : borderColor,
            width: 1.0),
        borderRadius:
            borderRadius ?? const BorderRadius.all(Radius.circular(6)),
      ),
      child: isLoading
          ? const SizedBox(
              width: 15,
              height: 15,
              child: CircularProgressIndicator(
                strokeWidth: 1.2,
                valueColor: AlwaysStoppedAnimation(
                  MyColors.whiteColor,
                ),
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (isLoading)
                  const SizedBox(
                    width: 15,
                    height: 15,
                    child: CircularProgressIndicator(
                      strokeWidth: 1.2,
                      valueColor: AlwaysStoppedAnimation(
                        MyColors.whiteColor,
                      ),
                    ),
                  ),
                if (isLoading) HorizontalSpacing.d10px(),
                icon ?? const SizedBox.shrink(),
                if (icon != null) HorizontalSpacing.custom(value: 8.0),
                Text(
                  text,
                  style: disabled
                      ? _buttonTextStyle.copyWith(color: MyColors.greyColor)
                      : textStyle ??
                          (isOutline ? _outlineTextStyle : _buttonTextStyle),
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                ),
              ],
            ),
    );
  }
}
