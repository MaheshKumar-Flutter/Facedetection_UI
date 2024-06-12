// import 'dart:io';

// import 'package:flutter/material.dart';

// import 'package:package_info_plus/package_info_plus.dart';
// import 'package:url_launcher/url_launcher.dart';

// import '../model/logger.dart';
// import '../model/update_model.dart';
// import '../sublocator.dart';
// import '../utils/style.dart';
// import 'dialog/dialogManagerService.dart';

// class UpdateChecker {
//   versionCheck() async {
//     UpdateModel data = await apiService.getUpdateResult();

//     final PackageInfo info = await PackageInfo.fromPlatform();

//     final String currentVersion = info.version;

//     //  final UpdateModel appConfig = locator<UserAppConfiguration>().config;

//     try {
//       ApplicationConfig? appStoreInfo =
//           Platform.isIOS ? data.ios : data.android;

//       print("appStoreInfo?.version");
//       print(appStoreInfo?.current);
//       print(currentVersion);
//       print("APP URL${appStoreInfo!.appUrl!}");
//       String appVersion = "3.0.0";

//       if (appStoreInfo.current != currentVersion) {
//         List<PrevVersions>? MyData = appStoreInfo.prevVersions
//             ?.where((element) => (element.version == currentVersion) == true)
//             .toList();

//         print("VALUE$MyData");

//         if (MyData!.isEmpty) {
//           // if (int.parse(appStoreInfo?.current?.replaceAll(".", "") ?? "0") !=
//           //     int.parse(appVersion.replaceAll(".", ""))) {

//           await showDialog<String>(
//             context:
//                 locator<DialogService>().dialogNavigationKey.currentContext!,
//             barrierDismissible: false,
//             builder: (BuildContext context) {
//               return AlertDialog(
//                 title: const Text(
//                   "Update Required",
//                   style: MyTextStyle.medium,
//                 ),
//                 content: const Text(
//                   "New Update Available.",
//                   style: MyTextStyle.medium,
//                 ),
//                 actions: <Widget>[
//                   MaterialButton(
//                     child: const Text(
//                       "UPDATE NOW",
//                       // style: AppTextStyle.button,
//                     ),
//                     onPressed: () async => await launchUrl(
//                       Uri.parse(appStoreInfo!.appUrl!),
//                       mode: LaunchMode.externalNonBrowserApplication,
//                     ),
//                   ),
//                 ],
//               );
//             },
//           );

//           return null;
//         }

//         if (MyData.first.version == currentVersion) {
//           // if (int.parse(appStoreInfo?.current?.replaceAll(".", "") ?? "0") !=
//           //     int.parse(appVersion.replaceAll(".", ""))) {
//           if (MyData.first.forceUpdate == true) {
//             return await showDialog<String>(
//               context:
//                   locator<DialogService>().dialogNavigationKey.currentContext!,
//               barrierDismissible: false,
//               builder: (BuildContext context) {
//                 return AlertDialog(
//                   title: const Text(
//                     "Update Required",
//                     style: MyTextStyle.medium,
//                   ),
//                   content: const Text(
//                     "New Update Available.",
//                     style: MyTextStyle.medium,
//                   ),
//                   actions: <Widget>[
//                     MaterialButton(
//                       child: const Text(
//                         "UPDATE NOW",
//                         // style: AppTextStyle.button,
//                       ),
//                       onPressed: () async => await launchUrl(
//                         Uri.parse(appStoreInfo.appUrl!),
//                         mode: LaunchMode.externalApplication,
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             );
//           }

//           return null;
//         }
//       }
//     } catch (exception, stacktrace) {
//       print("object");
//       Logger.e("Unable to check for version info", e: exception, s: stacktrace);
//     }
//   }
// }
