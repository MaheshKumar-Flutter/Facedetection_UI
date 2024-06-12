import 'package:face_detection/router.dart';
import 'package:face_detection/service/formfieldstate.dart';
import 'package:face_detection/sublocator.dart';
import 'package:face_detection/utils/colors.dart';
import 'package:face_detection/utils/images.dart';
import 'package:face_detection/utils/spacing.dart';
import 'package:face_detection/utils/style.dart';
import 'package:face_detection/widget/background_widget.dart';
import 'package:face_detection/widget/button.dart';
import 'package:face_detection/widget/custom_textField.dart';
import 'package:face_detection/widget/onTapButton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmployeeDetails extends StatefulWidget {
  const EmployeeDetails({super.key});

  @override
  State<EmployeeDetails> createState() => _EmployeeDetailsState();
}

class _EmployeeDetailsState extends State<EmployeeDetails> {
  final NumberFormFieldController _controller =
      NumberFormFieldController(const ValueKey("empCode"));
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: BackGroundImage(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: SvgPicture.asset(
                  MyImage.backarrowgray,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            VerticalSpacing.custom(value: 80),
            SvgPicture.asset(MyImage.home,width: size.width*0.55,),
            VerticalSpacing.d30px(),
            const Text(
              "Employee Code",
              style: TextStyle(
                  color: MyColors.greyColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: FormFieldTextField(
                controller: _controller,
              
                customInputType: TextInputType.number,
                contentPadding: const EdgeInsets.all(13),
                suffixIcon: InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4, right: 4),
                        child: Container(
                          height: 40,
                          width: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: MyColors.searchbg),
                        ),
                      ),
                      Positioned(
                          top: 12,
                          left: 12,
                          child: SvgPicture.asset(MyImage.search))
                    ],
                  ),
                ),
              ),
            ),
            VerticalSpacing.d15px(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: SizedBox(
                height: 125,
                width: size.width,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: MyColors.OTPPincolor)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Text("Employee Code", style: MyTextStyle.graycolor,),
                               
                                Padding(
                                  padding: EdgeInsets.only(right: 40),
                                  child: Text("Employee Name",style: MyTextStyle.graycolor,),
                                )
                              ],),
                              VerticalSpacing.custom(value: 6),
                              const Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                 Text("001235", style: MyTextStyle.empdetail,),
                                
                                Padding(
                                  padding: EdgeInsets.only(right: 40),
                                  child: Text("KavinKumar",style: MyTextStyle.empdetail,),
                                )
                              ],),
                              VerticalSpacing.d20px(),
                              Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                               const Text("Designation", style: MyTextStyle.graycolor,),
                                VerticalSpacing.custom(value: 6),
                                 const Text("Driver(Bus)", style: MyTextStyle.empdetail,),
                              ],)
                            ],
                          ),
                          
                        ),
                        ),
              ),
            ),
            Spacer(),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 78),
             child: OnTapButton(onPressed: (){
              navigationService.pushNamed(Routes.selfieCapture);
             }, title: "Proceed"),
           ),
            VerticalSpacing.custom(value: 34)
          ],
        ),
      ),
    );
  }
}
