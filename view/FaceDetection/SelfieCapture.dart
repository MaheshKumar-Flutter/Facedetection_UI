import 'package:camera/camera.dart';
import 'package:face_detection/router.dart';
import 'package:face_detection/sublocator.dart';
import 'package:face_detection/utils/colors.dart';
import 'package:face_detection/utils/spacing.dart';
import 'package:face_detection/utils/style.dart';
import 'package:face_detection/widget/button.dart';
import 'package:face_detection/widget/onTapButton_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SelfieCapture extends StatefulWidget {
  const SelfieCapture({super.key});

  @override
  State<SelfieCapture> createState() => _SelfieCaptureState();
}

class _SelfieCaptureState extends State<SelfieCapture>
    with TickerProviderStateMixin {
  late AnimationController controller;
  CameraController? _controller;
  List<CameraDescription> cameras = [];
  CameraDescription? firstCamera;

  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    cameras = await availableCameras();
    firstCamera = cameras[1];
    _controller = CameraController(
      firstCamera!,
      ResolutionPreset.high,
    );

    await _controller!.initialize();
    if (!mounted) {
      return;
    }
    setState(() {});
  }

  bool isCaptured = false;

  capture() {
    isCaptured = false;
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {
          isCaptured = true;
        });
      });
    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller?.dispose();
    controller.dispose();
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
              child: Padding(
                padding: const EdgeInsets.only(top: 550, left: 50, right: 50),
                child: isCaptured
                    ? LinearPercentIndicator(
                        backgroundColor: Colors.transparent,
                        clipLinearGradient: true,
                        padding: EdgeInsets.zero,
                        lineHeight: 15.0,
                        animation: true,
                        barRadius: const Radius.circular(25),
                        progressColor: MyColors.orangeBackGroundColor,
                        percent: 1.0,
                      )
                    : Container(),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 78),
              child: OnTapButton(onPressed: (){
                capture();
                navigationService.pushNamed(Routes.selfieVerificationSuccess);
              }, title: "Capture",)       
            ),
           Spacer()
          ]),
        ],
      )),
    );
  }
}
