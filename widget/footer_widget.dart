import 'package:face_detection/utils/colors.dart';
import 'package:face_detection/utils/spacing.dart';
import 'package:face_detection/utils/style.dart';
import 'package:flutter/material.dart';

class FooterLayer extends StatelessWidget {
  const FooterLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Powered by",
              style: MyTextStyle.EmpName.copyWith(color: MyColors.footer,fontSize: 11),
              
            ),
            HorizontalSpacing.custom(value: 3),
            InkWell(
              onTap: () {},
              child: Text(
                "Maxpro",
                style: MyTextStyle.register.copyWith(fontSize: 11),
              ),
            )
          ],
        );
  }
}