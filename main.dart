import 'package:camera/camera.dart';
import 'package:face_detection/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:face_detection/service/cacheService.dart';
import 'package:face_detection/service/dialog/dialogManagerService.dart';
import 'package:face_detection/service/dialog/dialogService.dart';
import 'package:face_detection/service/getIPservice.dart';
import 'package:face_detection/service/logger.dart';
import 'package:face_detection/sublocator.dart';
import 'package:face_detection/utils/colors.dart';

import 'package:loader_overlay/loader_overlay.dart';
import 'package:sizer/sizer.dart';
import 'package:url_strategy/url_strategy.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();
  await PreferenceService().init();
  await subLocator();
  await GetApiServiceCall().initPlatformState();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);


  FlutterError.onError = (FlutterErrorDetails details) {
    Logger.e(details.toString(), s: StackTrace.current);
    print(details.toString());
  };
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GlobalLoaderOverlay(
        useDefaultLoading: false,
        overlayWidgetBuilder: (_) {
          //ignored progress for the moment
          return const Center(
              child: SpinKitFadingCircle(
            color: Colors.white,
            size: 50.0,
          ));
        },
        child: Sizer(
          builder: (context, orientation, deviceType) => MaterialApp(
            title: 'Face Detection',
            builder: (BuildContext context, widget) {
              widget = _setupDialogManager(context, widget);
              widget = getTextScale(context, widget);
              return widget;
            },
            theme: ThemeData(
              useMaterial3: false,
              colorScheme:
                  ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
            ),
            initialRoute: '/',
            navigatorKey: navigationService.navigatorKey,
            onGenerateRoute: (settings) => AppRouter.generateRoute(settings),
            debugShowCheckedModeBanner: false,
          ),
        ));
  }

  Widget getTextScale(context, widget) {
    return MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: const TextScaler.linear(1.0)),
        child: widget!);
  }

  Widget _setupDialogManager(context, widget) {
    return Navigator(
      key: locator<DialogService>().dialogNavigationKey,
      onGenerateRoute: (settings) => MaterialPageRoute(builder: (context) {
        return DialogManager(child: widget!);
      }),
    );
  }
}
