import 'package:camera/camera.dart';
import 'package:face_detection/router.dart';
import 'package:face_detection/service/dialog/dialog_alert_response.dart';
import 'package:face_detection/sublocator.dart';
import 'package:face_detection/utils/colors.dart';
import 'package:face_detection/utils/images.dart';
import 'package:face_detection/utils/spacing.dart';
import 'package:face_detection/utils/style.dart';
import 'package:face_detection/widget/button.dart';
import 'package:face_detection/widget/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FaceDetectionPage extends StatefulWidget {
  @override
  _FaceDetectionPageState createState() => _FaceDetectionPageState();
}

class _FaceDetectionPageState extends State<FaceDetectionPage> {
  CameraController? _controller;
  List<CameraDescription> cameras = [];
  CameraDescription? firstCamera;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    cameras = await availableCameras();
    firstCamera = cameras[1];

    _controller = CameraController(
      firstCamera!,
      ResolutionPreset.medium,
    );

    await _controller!.initialize();
    if (!mounted) {
      return;
    }
    setState(() {});
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null || !_controller!.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(children: [
            CameraPreview(
              _controller!,
              child: Positioned(
                  top: 15,
                  left: 10,
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(MyImage.backarrowwhite))),
            ),
            VerticalSpacing.custom(value: 40),
            const Text(
              "Wed 10:15 AM",
              style: TextStyle(color: MyColors.showdate, fontSize: 14),
            ),
            VerticalSpacing.custom(value: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  MyImage.location,
                  width: 23,
                  height: 17,
                ),
                HorizontalSpacing.custom(value: 5),
                const Text(
                  "CSW SHANKARPALLY",
                  style: TextStyle(
                      color: MyColors.showname,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            VerticalSpacing.custom(value: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  "Success",
                  height: 35,
                  onPressed: () {
                    dialogService.showBottomSheet(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            VerticalSpacing.custom(value: 22),
                            const Text(
                              "Closing in 0 Seconds",
                              style: TextStyle(
                                  color: MyColors.bluesuccess,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                            VerticalSpacing.custom(value: 30),
                            const Text("Punch-In Successful",
                                style: MyTextStyle.bottomsuccess),
                            VerticalSpacing.custom(value: 17),
                            SizedBox(
                              width: 85,
                              child: Stack(
                                children: [
                                  SvgPicture.asset(
                                    MyImage.circleimage,
                                  ),
                                  Positioned(
                                      top: 40,
                                      left: 55,
                                      child: CircleAvatar(
                                        backgroundColor:
                                            MyColors.mySuccessColor,
                                        radius: 13,
                                        child: SvgPicture.asset(
                                            MyImage.selecticon),
                                      ))
                                ],
                              ),
                            ),
                            VerticalSpacing.custom(
                              value: 12,
                            ),
                            const Text("Kavin Kumar",
                                style: MyTextStyle.bottomsuccess),
                            VerticalSpacing.d10px(),
                            const Text("0131465",
                                style: TextStyle(
                                    color: MyColors.darkpurple,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            VerticalSpacing.custom(
                              value: 26,
                            ),
                            const Text(
                              "May 23 2034 10:15 AM",
                              style: TextStyle(
                                  color: MyColors.showdate, fontSize: 14),
                            ),
                            VerticalSpacing.custom(value: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  MyImage.location,
                                  width: 23,
                                  height: 17,
                                ),
                                HorizontalSpacing.custom(value: 5),
                                const Text(
                                  "CSW SHANKARPALLY",
                                  style: TextStyle(
                                      color: MyColors.showname,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            VerticalSpacing.custom(value: 36,),
                           
                          ],
                        ),
                        isdismissable: true,
                        showCloseIcon: false,
                        showActionBar: false);
                  },
                  color: MyColors.primaryColor,
                  textStyle: const TextStyle(color: MyColors.whiteColor),
                ),
                HorizontalSpacing.custom(value: 10),
                Button(
                  "failure",
                  height: 35,
                  onPressed: () {
                    dialogService.showBottomSheet(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            VerticalSpacing.custom(value: 22),
                            const Text(
                              "Closing in 0 Seconds",
                              style: TextStyle(
                                  color: MyColors.bluesuccess,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                            VerticalSpacing.custom(value: 30),
                            const Text("You are not registered",
                                style: MyTextStyle.bottomsuccess),
                            VerticalSpacing.custom(value: 17),
                            SizedBox(
                              width: 85,
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: MyColors.bgavatar,
                                    radius: 38,
                                    child: SvgPicture.asset(
                                      MyImage.usericon,
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                                  Positioned(
                                      top: 45,
                                      left: 55,
                                      child: CircleAvatar(
                                        backgroundColor:
                                            MyColors.myFailureColor,
                                        radius: 13,
                                        child:
                                            SvgPicture.asset(MyImage.closeicon),
                                      ))
                                ],
                              ),
                            ),
                            VerticalSpacing.custom(
                              value: 12,
                            ),
                            VerticalSpacing.custom(
                              value: 26,
                            ),
                            const Text(
                              "May 23 2034 10:15 AM",
                              style: TextStyle(
                                  color: MyColors.showdate, fontSize: 14),
                            ),
                            VerticalSpacing.custom(value: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  MyImage.location,
                                  width: 23,
                                  height: 17,
                                ),
                                HorizontalSpacing.custom(value: 5),
                                const Text(
                                  "CSW SHANKARPALLY",
                                  style: TextStyle(
                                      color: MyColors.showname,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                             VerticalSpacing.custom(value: 36,),
                          ],
                        ),
                        isdismissable: true,
                        showCloseIcon: false,
                        showActionBar: false);
                  },
                  color: MyColors.primaryColor,
                  textStyle: const TextStyle(color: MyColors.whiteColor),
                ),
              ],
            ),
            
          ]),
        ],
      )),
    );
  }
}
