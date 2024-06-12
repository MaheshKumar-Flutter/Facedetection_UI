
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

class FirebaseGoogleAnalytics{
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  Future<void> setUserId(String? userId) async {
    analytics.setUserId(id: userId.toString());
    FirebaseCrashlytics.instance.setUserIdentifier(userId.toString());
  }

  Future<void>  getLoginUser(String? name)async{
    await analytics.setUserProperty(name: name ?? "", value: null);
    debugPrint('Analytics: Username - ${name.toString()}');
  }

  Future<void> logScreenName(String screenName) async {
    await analytics.setCurrentScreen(screenName: screenName);
  }

  Future<void> logScreenView(String? screenName,{String? className=""}) async {
    await analytics.logEvent(name: 'screen_view', parameters: filterOutNulls({'screen_name': screenName,'screen_class': className}));
  }

  Future<void>  getOpenCourse(String?courseName,String? courseId)async{
    await analytics.logEvent(
        name: "OPEN_COURSE",
        parameters: {
        "course name": courseName,
        "courseId": courseId,
        } );
  }

  Future<void>  getOpenVideoPlayer(String?videoCourseName,String? courseId)async{
    await analytics.logEvent(
        name: "OPEN_VideoPlayerCourse",
        parameters: {
          "course name": videoCourseName,
          "courseId": courseId,
        } );
  }

  // Future<void>  playVideoId(String?videoId,String? courseId)async{
  //   await analytics.logEvent(
  //       name: "OPEN_VideoPlayerCourse",
  //       parameters: {
  //         "course name": videoCourseName,
  //         "courseId": courseId,
  //       } );
  // }


}