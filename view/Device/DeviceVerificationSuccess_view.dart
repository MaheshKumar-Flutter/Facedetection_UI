import 'package:face_detection/router.dart';
import 'package:face_detection/sublocator.dart';
import 'package:face_detection/utils/colors.dart';
import 'package:face_detection/utils/images.dart';
import 'package:face_detection/utils/spacing.dart';
import 'package:face_detection/utils/style.dart';
import 'package:face_detection/widget/background_widget.dart';
import 'package:face_detection/widget/button.dart';
import 'package:face_detection/widget/onTapButton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DeviceVerificationSuccess extends StatefulWidget {
  const DeviceVerificationSuccess({super.key});

  @override
  State<DeviceVerificationSuccess> createState() => _DeviceVerificationSuccessState();
}

class _DeviceVerificationSuccessState extends State<DeviceVerificationSuccess> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BackGroundImage(
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
            VerticalSpacing.d16px(),
             const Text("Device Code",style: MyTextStyle.success,),
             VerticalSpacing.d10px(),
             Text("TKQ1.221013.002",style: MyTextStyle.success.copyWith(fontSize: 20),),
            VerticalSpacing.d30px(),
            CircleAvatar(
              radius: 28,
              child: SvgPicture.asset(MyImage.selecticon,height: 60,),
              backgroundColor: MyColors.mySuccessColor,
            ),
            VerticalSpacing.d30px(),
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Device Register",style: MyTextStyle.success,),
                VerticalSpacing.d2px(),
                const Text("verification successful",style: MyTextStyle.success,),
              ],
            ),
            VerticalSpacing.custom(value: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 68),
              child: OnTapButton(onPressed: (){
                navigationService.pushNamed(Routes.locationMapping);
              }, title: "Proceed"),
            )
          ],
        ),
      ),
    );
  }
}