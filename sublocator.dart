import 'package:get_it/get_it.dart';

import 'package:face_detection/service/api_service.dart';
import 'package:face_detection/service/cacheService.dart';
import 'package:face_detection/service/dialog/dialogManagerService.dart';
import 'package:face_detection/service/eventBusService.dart';
import 'package:face_detection/service/google_analytics_service.dart';

import 'package:face_detection/service/navigation_service.dart';
import 'package:face_detection/service/pageRestoreService.dart';
import 'package:face_detection/service/user_config/firebase_remote_config.dart';

GetIt locator = GetIt.instance;

NavigationService get navigationService => locator<NavigationService>();
ApiService get apiService => locator<ApiService>();
PreferenceService get cacheService => locator<PreferenceService>();
DialogService get dialogService => locator<DialogService>();
FirebaseGoogleAnalytics get analyticsFirebaseService =>
    locator<FirebaseGoogleAnalytics>();
EventBusService get eventBusService => locator<EventBusService>();

Future subLocator() async {
  print("isInitiated");
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => PreferenceService());
  locator.registerLazySingleton(() => NavigationService());

  locator.registerLazySingleton(() => EventBusService());

  locator.registerLazySingleton(() => PageStorageService());
  locator.registerLazySingleton(() => ApiService());
  locator.registerLazySingleton(() => FirebaseGoogleAnalytics());
  locator.registerLazySingleton(() => FirebaseRemoteHelper());
}
