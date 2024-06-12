import 'package:face_detection/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:face_detection/utils/images.dart';

class BackGroundImage extends StatelessWidget {
  final Widget child;

  const BackGroundImage({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: ColoredBox(
        color: MyColors.whiteColor,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset(
                MyImage.bgtop,
                fit: BoxFit.fill,
                width: size.width*0.45,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SvgPicture.asset(
                MyImage.bgbottom,
                fit: BoxFit.fill,
                 width: size.width*0.45,
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
