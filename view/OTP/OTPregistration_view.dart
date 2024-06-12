import 'package:face_detection/router.dart';
import 'package:face_detection/sublocator.dart';
import 'package:face_detection/utils/colors.dart';
import 'package:face_detection/utils/images.dart';
import 'package:face_detection/utils/spacing.dart';
import 'package:face_detection/utils/style.dart';
import 'package:face_detection/view/OTP/OTPcontroller.dart';
import 'package:face_detection/widget/background_widget.dart';
import 'package:face_detection/widget/button.dart';
import 'package:face_detection/widget/onTapButton_widget.dart';
import 'package:face_detection/widget/pin_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:stacked/stacked.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OTPcontroller>.reactive(
        viewModelBuilder: () => OTPcontroller(),
        builder:
            (BuildContext context, OTPcontroller viewModel, Widget? child) {
          var size = MediaQuery.sizeOf(context);
          return Scaffold(
            body: Form(
              key: viewModel.otpFormKey,
              child: BackGroundImage(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        MyImage.employeehome,
                        width: size.width * 0.35,
                      ),
                      VerticalSpacing.custom(value: 35),
                      const Text(
                        "OTP verification",
                        style: TextStyle(
                            color: MyColors.greyColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      VerticalSpacing.d20px(),
                      CustomPin(
                       viewModel.pinController
                      ),
                      VerticalSpacing.custom(value: 25),
                      OnTapButton(
                          onPressed: () {
                              if (viewModel.otpFormKey.currentState!
                                          .validate() !=
                                          true) {
                                        return;
                                      }
                            navigationService.pushNamed(Routes.employeeDetails);
                          },
                          title: "Verify")
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
