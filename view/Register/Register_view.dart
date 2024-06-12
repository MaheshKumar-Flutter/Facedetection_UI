import 'package:face_detection/router.dart';
import 'package:face_detection/sublocator.dart';
import 'package:face_detection/utils/spacing.dart';
import 'package:face_detection/utils/style.dart';
import 'package:face_detection/widget/background_widget.dart';
import 'package:face_detection/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: BackGroundImage(
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Spacer(),
                  UpperLayer(),
                  SvgPicture.asset(MyImage.facemask,width: size.width*0.33,),
                  DownLayer(),
                  VerticalSpacing.d40px(),
                  Spacer(),
                  FooterLayer(),
                 VerticalSpacing.d30px()
                ]),

      ),
    );
  }

  Widget UpperLayer() {
    return Column(
      children: [
        // Text(
        //   "NCC Limited",
        //   style: MyTextStyle.date
        //       .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
        // ),
        VerticalSpacing.custom(value: 20),
        const Text(
          "10:15",
          style: MyTextStyle.darkPurple,
        ),
        VerticalSpacing.custom(value: 1),
        const Text(
          "Monday, Apr 15",
          style: MyTextStyle.date,
        ),
        VerticalSpacing.custom(value: 38),
      ],
    );
  }

  Widget DownLayer() {
    var size = MediaQuery.sizeOf(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        VerticalSpacing.d20px(),
        SvgPicture.asset(MyImage.location),
        VerticalSpacing.custom(value: 12),
        Text(
          "CSW SHANKARPALLY",
          style: MyTextStyle.locationName.copyWith(fontWeight: FontWeight.w500),
        ),
        VerticalSpacing.custom(value: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button("Punch In",
                padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 35),
                textStyle: MyTextStyle.textColor,
                height: 0,
                width: 0,
                borderColor: MyColors.primaryColor,
                borderRadius: BorderRadius.circular(8),
                color: MyColors.primaryColor,
                onPressed: () {
                navigationService.pushNamed(Routes.faceDetection);
                }),
            HorizontalSpacing.d10px(),
            Button("Punch Out",
                padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 35),
                textStyle: MyTextStyle.button,
                height: 0,
                width: 0,
                borderColor: MyColors.lightBorderBlue,
                borderRadius: BorderRadius.circular(8),
                color: MyColors.whiteColor,
                onPressed: () {}),
          ],
        ),
        VerticalSpacing.custom(value: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 98),
          child: Button("Register Employee", onPressed: (){
            navigationService.pushNamed(Routes.otpScreen);
          },
          padding: const EdgeInsets.symmetric(vertical: 11,horizontal: 35),
            width: 0,
                  textStyle: MyTextStyle.button.copyWith(fontSize: size.width*0.031),             
                  borderRadius: BorderRadius.circular(8),
                  color: MyColors.orangeBackGroundColor,
          ),
        ),
      ],
    );
  }

  Widget FooterLayer(){
    return  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Powered by",
              style: MyTextStyle.EmpName.copyWith(color: MyColors.footer,fontSize: 11),
              
            ),
            HorizontalSpacing.custom(value: 3),
            InkWell(
              onTap: () {},
              child: Text(
                "Maxpro",
                style: MyTextStyle.register.copyWith(fontSize: 11),
              ),
            )
          ],
        );
  }
}
