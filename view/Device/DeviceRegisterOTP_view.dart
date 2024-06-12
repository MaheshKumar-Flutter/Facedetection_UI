import 'package:face_detection/router.dart';
import 'package:face_detection/sublocator.dart';
import 'package:face_detection/utils/colors.dart';
import 'package:face_detection/utils/spacing.dart';
import 'package:face_detection/utils/style.dart';
import 'package:face_detection/widget/background_widget.dart';
import 'package:face_detection/widget/button.dart';
import 'package:face_detection/widget/onTapButton_widget.dart';
import 'package:face_detection/widget/pin_textField.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:face_detection/view/OTP/OTPcontroller.dart';
import 'package:stacked/stacked.dart';

class DeviceRegister extends StatefulWidget {
  const DeviceRegister({super.key});

  @override
  State<DeviceRegister> createState() => _DeviceRegisterState();
}

class _DeviceRegisterState extends State<DeviceRegister> {
  TextEditingController? pinController;
  FocusNode? focusNode;
  GlobalKey<FormState>? key;
   Function(String)? onCompleted;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OTPcontroller>.reactive(viewModelBuilder: () => OTPcontroller(), builder: (BuildContext context, OTPcontroller viewModel, Widget?child){
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
                const Text(
                  "NCC Limited",
                  style: TextStyle(
                      color: MyColors.purple,
                      fontSize: 28,
                      fontWeight: FontWeight.w500),
                ),
                VerticalSpacing.d40px(),
                 const Text("Device Registration",
                  style: TextStyle(
                        color: MyColors.greyColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                ),
                VerticalSpacing.d20px(),
                 CustomPin(
                  viewModel.pinController,
                ),
                VerticalSpacing.custom(value: 25),
               OnTapButton(onPressed: (){
                 if (viewModel.otpFormKey.currentState!
                                          .validate() !=
                                          true) {
                                        return;
                                      }
                navigationService.pushNamed(Routes.deviceVerificationSuccess);
               }, 
               title: "Register",
               
               )
              ],
            ),
          ),
        ),
      ),
    );
    });
    
  }
}
