import 'package:face_detection/router.dart';
import 'package:face_detection/sublocator.dart';
import 'package:face_detection/utils/colors.dart';
import 'package:face_detection/utils/images.dart';
import 'package:face_detection/utils/spacing.dart';
import 'package:face_detection/utils/style.dart';
import 'package:face_detection/widget/background_widget.dart';
import 'package:face_detection/widget/button.dart';
import 'package:face_detection/widget/customExpansion_widget.dart';
import 'package:face_detection/widget/onTapButton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import '../../widget/animaatedExpansionTile.dart';

class LocationMapping extends StatefulWidget {
  const LocationMapping({super.key});

  @override
  State<LocationMapping> createState() => _LocationMappingState();
}

class _LocationMappingState extends State<LocationMapping> {
  final List<String> Items = [
  'Location 1',
  'Location 2',
];

String Value1 = "";
String Value2 = ""; 

final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundImage(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              VerticalSpacing.custom(value: 110),
              SvgPicture.asset(MyImage.locationmapping,height: 220,),
              VerticalSpacing.custom(value: 25),
              Text(
                "Location Mapping",
                style: MyTextStyle.success.copyWith(fontSize: 18),
              ),
              VerticalSpacing.d20px(),
             DropdownButtonFormField2<String>(
              isExpanded: true, 
              decoration: InputDecoration(
                // Add Horizontal padding using menuItemStyleData.padding so it matches
                // the menu padding when button's width is not specified.
                contentPadding: const EdgeInsets.symmetric(vertical: 13),        
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: MyColors.OTPPincolor)           
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: MyColors.OTPPincolor)           
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: MyColors.OTPPincolor)           
                ),
                // Add more decoration..
              ),
              hint:  Text(
                'Location type',
                 style: TextStyle(
                     fontSize: 14,
                     fontWeight: FontWeight.w500,
                     color: MyColors.greyColor.withOpacity(0.5),
                   ),
              ),
              items: Items
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select Location type.';
                }
                return null;
              },
             onChanged: (String? newValue) {
              setState(() {

                Value1 = newValue!;
               
              });
            },
              onSaved: (value) {
                Value1 = value.toString();
              },
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.only(right: 8),
              ),
              iconStyleData:  IconStyleData(
                icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: MyColors.greyColor.withOpacity(0.5),
                ),
                iconSize: 24,
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
             
              VerticalSpacing.d15px(),
             DropdownButtonFormField2<String>(
              isExpanded: true,
              decoration: InputDecoration(

                contentPadding: const EdgeInsets.symmetric(vertical: 13),

                 focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: MyColors.OTPPincolor)           
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: MyColors.OTPPincolor)           
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                 borderSide: BorderSide(color: MyColors.OTPPincolor)  
                ),
              ),
              hint:  Text(
                'Location',
                 style: TextStyle(
                     fontSize: 14,
                     fontWeight: FontWeight.w500,
                     color: MyColors.greyColor.withOpacity(0.5),
                   ),
              ),
              items: Items
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select Location.';
                }
                return null;
              },
               onChanged: (String? newValue) {
              setState(() {
               Value2 = newValue!;
              });
            },
              onSaved: (value) {
                value = value.toString();
              },
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.only(right: 8),
              ),
              iconStyleData:  IconStyleData(
                icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: MyColors.greyColor.withOpacity(0.5),
                ),
                iconSize: 24,
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
              VerticalSpacing.custom(value: 25),
                OnTapButton(onPressed: (){
                  if (Value1.isEmpty && Value2.isEmpty)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Location type and Location is empty'),
                  backgroundColor: MyColors.redColor,
                ),
                    );
                    return;
                  }
                 else if(Value1.isEmpty)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Location type is empty',style: TextStyle(color: MyColors.whiteColor),),
                  backgroundColor: MyColors.redColor,
                ),
                    );
                    return;
                  }
                  else if (Value2.isEmpty)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Location is empty',style: TextStyle(color: MyColors.whiteColor),),
                  backgroundColor: MyColors.redColor,
                ),
                    );
                    return;
                  }
                
                  navigationService.pushNamed(Routes.register);
                }, title: "Done"),
                Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
