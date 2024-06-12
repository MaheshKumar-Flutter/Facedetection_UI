import 'dart:developer' as developer;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:face_detection/utils/extension.dart';

class DeviceIdAccess {
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  Map<String, dynamic> deviceDataInfo = <String, dynamic>{};

  String deviceID = '';

  Future<String> initPlatformState() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    try {
      if (isIOS()) {
        IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
        deviceID = iosDeviceInfo.identifierForVendor!;
        return deviceID;
      } else {
        AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
        deviceID = androidDeviceInfo.id;
        return deviceID;
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error getting device info: $e");
      }
    }
    return deviceID;
  }
}
