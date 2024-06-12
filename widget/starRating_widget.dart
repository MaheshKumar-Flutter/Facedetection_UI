import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/colors.dart';
import '../utils/spacing.dart';
import '../utils/style.dart';

class CustomRatingWidget extends StatelessWidget {
  String? rating;
  String? count;
  CustomRatingWidget({Key? key, this.rating, this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Icon(
          Icons.star,
          color: MyColors.starColor,
          size: 4.w,
        ),
        HorizontalSpacing.d2px(),
        Text(
          count == "0" ? rating ?? "" : "${rating ?? "4"} (${count ?? ""})",
          style: MyTextStyle.medium.copyWith(
              fontSize: 3.w,
              fontWeight: FontWeight.normal,
              color: MyColors.greyColor.withOpacity(0.8)),
        ),
      ],
    );
  }
}
