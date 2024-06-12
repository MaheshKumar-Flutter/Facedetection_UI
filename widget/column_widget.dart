import 'package:flutter/cupertino.dart';

import '../utils/spacing.dart';
import '../utils/style.dart';

class ColumnData extends StatelessWidget {
  final String ?header;
  final String? medium;
  const ColumnData({Key? key, this.header, this.medium}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                header ?? "",
                style: MyTextStyle.descriptionBold
            ),
            VerticalSpacing.d5px(),
            Text(
              medium ?? "",
              style: MyTextStyle.descriptionMedium,
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
  }
}