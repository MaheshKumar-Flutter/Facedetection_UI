import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:face_detection/utils/colors.dart';
import 'package:package_info_plus/package_info_plus.dart';

class FirebaseRemoteHelper {
  Future<void> configure() async {
    try {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
    } catch (e) {
      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult == ConnectivityResult.none) {
        Fluttertoast.showToast(
          msg: "No Network Connection. Please Enable Internet and Try Again.",
          toastLength: Toast.LENGTH_LONG,
          backgroundColor: MyColors.whiteColor,
          textColor: MyColors.blackColor,
        );
      }
      debugPrint("exe $e");
      rethrow;
    }
  }
}
