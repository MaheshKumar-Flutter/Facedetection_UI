import 'package:flutter_share/flutter_share.dart';

class ShareService {
  static Future<void> shareCourseDetails() async {
    await FlutterShare.share(
      title: 'Share Product',
      text: 'face_detection',
      linkUrl: "https://www.midigiworld.com/course-detail/",
    );
  }
}
