import 'package:flutter/material.dart';
import 'package:face_detection/utils/colors.dart';
import 'package:face_detection/utils/style.dart';
import 'package:pinput/pinput.dart';

class CustomPin extends StatefulWidget {
  final TextEditingController? pinController;
  final FocusNode? focusNode;

  @override
  GlobalKey<FormState>? key;
  Function(String)? onCompleted;
  Function(String)? onChanged;
  CustomPin(this.pinController, {this.key, this.focusNode}) : super(key: key);

  @override
  State<CustomPin> createState() => _CustomPinState();
}

class _CustomPinState extends State<CustomPin> {
  @override
  void dispose() {
    widget.pinController?.dispose();
    widget.focusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    const focusedBorderColor = MyColors.OTPPincolor;
    const fillColor = MyColors.whiteColor;
    final defaultPinTheme = PinTheme(
      width: size.width * 0.18,
      height: size.width * 0.125,
      textStyle: MyTextStyle.buttonStyle
          .copyWith(color: MyColors.blackColor, fontSize: 18),
      decoration: BoxDecoration(
          color: MyColors.whiteColor,
          border: Border.all(color: MyColors.OTPPincolor),
          borderRadius: BorderRadius.circular(6)),
    );
    return Directionality(
      key: widget.key,
      textDirection: TextDirection.ltr,
      child: Pinput(
        length: 6,
        controller: widget.pinController,
        focusNode: widget.focusNode,
        androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
        listenForMultipleSmsOnAndroid: true,
        defaultPinTheme: defaultPinTheme,
        validator: (value) {
          if (value!.isEmpty) {
            return "Please enter OTP";
          } else if (value.length < 6) {
            return "Invalid OTP";
          }
          return null;
        },
        hapticFeedbackType: HapticFeedbackType.lightImpact,
        onCompleted: widget.onCompleted ??
            (value) {
              if (value.length < 6) {
                "Invalid OTP";
                return;
              }
            },
        onChanged: widget.onChanged,
        cursor: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 9),
              width: 5,
              height: 1,
              color: MyColors.blackColor,
            ),
          ],
        ),
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            // borderRadius: BorderRadius.circular(8),
            border: Border.all(color: MyColors.OTPPincolor),
          ),
        ),
        submittedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            color: fillColor,
            // borderRadius: BorderRadius.circular(19),
            border: Border.all(color: MyColors.OTPPincolor),
          ),
        ),
        errorPinTheme: defaultPinTheme.copyBorderWith(
          border: Border.all(color: Colors.redAccent),
        ),
      ),
    );
  }
}
