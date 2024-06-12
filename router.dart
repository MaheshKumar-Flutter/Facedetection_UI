
import 'package:face_detection/view/Device/DeviceRegisterOTP_view.dart';
import 'package:face_detection/view/Device/DeviceVerificationSuccess_view.dart';
import 'package:face_detection/view/Device/LocationMapping_view.dart';
import 'package:face_detection/view/Employee/EmployeeDetails_view.dart';
import 'package:face_detection/view/FaceDetection/FaceDetection_view.dart';
import 'package:face_detection/view/FaceDetection/SelfieCapture.dart';
import 'package:face_detection/view/FaceDetection/SelfieTryAgain.dart';
import 'package:face_detection/view/FaceDetection/SelfieVerificationSuccess_view.dart';
import 'package:face_detection/view/OTP/OTPregistration_view.dart';
import 'package:face_detection/view/Organization/OrganizationRegister_view.dart';
import 'package:face_detection/view/Organization/OrganizationVerificationSuccess_view.dart';
import 'package:face_detection/view/Register/Register_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:face_detection/view/splashscreen/splashScreen.dart';

const String initialRoute = "login";

class Routes {
  static const String login = "/login";
  static const String splash = "/";
  static const String dashboard = "/dashboard";
  static const String landing = "/landing";
  static const String register = "/register";
  static const String otpScreen = "/otpScreen";
  static const String faceDetection = "/faceDetection";
  static const String employeeDetails = "/employeedetails";
  static const String organizationRegister = "/organizationregister";
  static const String organizationVerificationSuccess = "/organizationverificationsuccess";
  static const String deviceRegister = "/deviceregister";
  static const String deviceVerificationSuccess = "/deviceverificationsuccess";
  static const String locationMapping = "/locationmapping";
  static const String selfieCapture = "/selfiecapture";
  static const String selfieVerificationSuccess = "/selfieverificationsuccess";
  static const String selfieTryAgain = "/selfietryagain";
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return CupertinoPageRoute(builder: (_) => const SpashScreen());

         case Routes.organizationRegister:
        return CupertinoPageRoute(builder: (_) => const OrganizationRegister());

        case Routes.organizationVerificationSuccess:
        return CupertinoPageRoute(builder: (_) =>  const OrganizationVerificationSuccess());

         case Routes.deviceRegister:
        return CupertinoPageRoute(builder: (_) => const DeviceRegister());

        case Routes.deviceVerificationSuccess:
        return CupertinoPageRoute(builder: (_) =>  const DeviceVerificationSuccess());

        case Routes.locationMapping:
        return CupertinoPageRoute(builder: (_) =>  const LocationMapping());

      case Routes.register:
        return CupertinoPageRoute(builder: (_) => const RegisterPage());

      case Routes.faceDetection:
        return CupertinoPageRoute(builder: (_) =>  FaceDetectionPage());

      case Routes.otpScreen:
        return CupertinoPageRoute(builder: (_) =>  const OTPPage());

         case Routes.employeeDetails:
        return CupertinoPageRoute(builder: (_) =>  const EmployeeDetails());

         case Routes.selfieCapture:
        return CupertinoPageRoute(builder: (_) =>  const SelfieCapture());

         case Routes.selfieVerificationSuccess:
        return CupertinoPageRoute(builder: (_) =>  const SelfieVerificationSuccess());

         case Routes.selfieTryAgain:
        return CupertinoPageRoute(builder: (_) =>  const SelfieTryAgain());

        

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
