import 'package:face_detection/service/cacheService.dart';
import 'package:face_detection/service/formfieldstate.dart';
import 'package:face_detection/sublocator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class OrganizationController extends BaseViewModel {
   final PreferenceService preferenceService = locator<PreferenceService>();

   final formKey = GlobalKey<FormState>();

 TextFormFieldController textController = TextFormFieldController(
      const ValueKey(
        "orgcode",
      ),
      requiredText: "Enter your Organization code",
      required: true);

}