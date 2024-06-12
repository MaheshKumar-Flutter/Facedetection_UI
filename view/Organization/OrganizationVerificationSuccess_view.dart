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
import 'package:flutter_svg/flutter_svg.dart';

class OrganizationVerificationSuccess extends StatefulWidget {
  const OrganizationVerificationSuccess({super.key});

  @override
  State<OrganizationVerificationSuccess> createState() =>
      _OrganizationVerificationSuccessState();
}

class _OrganizationVerificationSuccessState extends State<OrganizationVerificationSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                const Text("Organization",style: MyTextStyle.success,),
                VerticalSpacing.d2px(),
                const Text("verification successful",style: MyTextStyle.success,),
              ],
            ),
            VerticalSpacing.custom(value: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 68),
              child: OnTapButton(onPressed: (){
                navigationService.pushNamed(Routes.deviceRegister);
              }, title: "Proceed",
              
              )
            )
          ],
        ),
      ),
    );
  }
}
