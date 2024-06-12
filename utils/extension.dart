import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:face_detection/utils/style.dart';

extension Target on Object {
  bool isAndroid() {
    return Platform.isAndroid;
  }

  bool isIOS() {
    return Platform.isIOS;
  }

  bool isLinux() {
    return Platform.isLinux;
  }

  bool isWindows() {
    return Platform.isWindows;
  }

  bool isMacOS() {
    return Platform.isMacOS;
  }

  bool isWeb() {
    return kIsWeb;
  }
}

extension StringExtension on String {
  Text richTextFirstLetterBold(
      {double fontSize = 12.0, FontWeight fontWeight = FontWeight.w500}) {
    if (isEmpty) return const Text('');

    final firstLetter = this[0];
    final remainingText = substring(1);

    return Text.rich(
      TextSpan(
        style: MyTextStyle.medium
            .copyWith(fontWeight: FontWeight.w500, fontSize: fontSize),
        children: [
          TextSpan(
              text: firstLetter,
              style: MyTextStyle.medium
                  .copyWith(fontWeight: FontWeight.bold, fontSize: fontSize)),
          TextSpan(text: remainingText),
        ],
      ),
    );
  }
}
