import 'package:face_detection/service/cacheService.dart';
import 'package:face_detection/sublocator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class OTPcontroller extends BaseViewModel{

  final GlobalKey<FormState> otpFormKey = GlobalKey<FormState>();

  TextEditingController pinController = TextEditingController(
    
  );

  PreferenceService preferenceService = locator<PreferenceService>();

  

  String getNumbersOnly(String input) {
    RegExp regex = RegExp(r'[^0-9.]');
    String numbersOnly = input.replaceAll(regex, '');
    return numbersOnly;
  }
}