import 'package:camera/camera.dart';
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

class SelfieVerificationSuccess extends StatefulWidget {
  const SelfieVerificationSuccess({super.key});

  @override
  State<SelfieVerificationSuccess> createState() => _SelfieVerificationSuccessState();
}

class _SelfieVerificationSuccessState extends State<SelfieVerificationSuccess> {
 

  @override


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: BackGroundImage(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
            CircleAvatar(
              radius: 41,
              child: SvgPicture.asset(MyImage.selecticon,height: 60,),
              backgroundColor: MyColors.mySuccessColor,
            ),
            VerticalSpacing.d15px(),
             const Text("Registration Successful",style: TextStyle(color: MyColors.showname,fontSize: 20,fontWeight: FontWeight.w500),),
            VerticalSpacing.d30px(),
             const Text("Employee Code",style: TextStyle(color: MyColors.graycolor,fontSize: 14),),
             VerticalSpacing.d10px(),
             const Text("001235",style: TextStyle(color: MyColors.primaryColor,fontSize: 38,fontWeight: FontWeight.bold),),

            VerticalSpacing.custom(value: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 68),
              child: OnTapButton(onPressed: (){
                navigationService.pushNamed(Routes.selfieTryAgain);
              }, title: "Go to Home")
            )
          ],
        ),
      ),
    );
  }
}
