import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:face_detection/utils/images.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomImageNetwork extends StatelessWidget {
  final BoxFit? fitSample;
  final double? height;
  final double? width;
  final String? image;
  final bool isNeedWidth;
  final BorderRadiusGeometry? borderRadius;
  const CustomImageNetwork(
      {Key? key,
      this.image,
      this.height,
      this.width = 100,
      this.fitSample,
      this.borderRadius,
      this.isNeedWidth = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(5),
        child: image != ""
            ? CachedNetworkImage(
                imageUrl: image ?? "",
                imageBuilder: (context, imageProvider) => Container(
                      height: height,
                      width: isNeedWidth ? width : null,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: fitSample ?? BoxFit.cover,
                        ),
                      ),
                    ),
                placeholder: (context, url) => Skeletonizer(
                    enabled: true,
                    child: SizedBox(
                      height: height,
                      width: width,
                      child: Icon(Icons.add),
                    )),
                errorWidget: (context, url, error) => Center(
                    child: SizedBox(
                        height: height,
                        width: width,
                        child: SvgPicture.asset(
                          MyImage.logo,
                          height: 30,
                          width: 20,
                        ))))
            : Center(
                child: SizedBox(
                    height: height,
                    width: width,
                    child: Image.asset(
                      MyImage.logo,
                      height: 30,
                      width: 20,
                    ))));
  }
}
