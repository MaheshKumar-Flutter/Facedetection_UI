import 'package:camera/camera.dart';
import 'package:face_detection/router.dart';
import 'package:face_detection/sublocator.dart';
import 'package:face_detection/utils/colors.dart';
import 'package:face_detection/utils/spacing.dart';
import 'package:face_detection/utils/style.dart';
import 'package:face_detection/widget/button.dart';
import 'package:face_detection/widget/onTapButton_widget.dart';
import 'package:flutter/material.dart';

class SelfieTryAgain extends StatefulWidget {
  const SelfieTryAgain({super.key});

  @override
  State<SelfieTryAgain> createState() => _SelfieTryAgainState();
}

class _SelfieTryAgainState extends State<SelfieTryAgain> {
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
            ),
           Spacer(),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 78),
                child: OnTapButton(onPressed: (){
                  navigationService.pushNamed(Routes.organizationRegister);
                }, title: "Try Again")
              ),
            ),
            Spacer()
          ]),
        ],
      )),
    );
  }
}