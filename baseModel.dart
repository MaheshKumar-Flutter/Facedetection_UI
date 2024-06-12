import 'package:face_detection/service/api_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:face_detection/service/api_service.dart';
import 'package:face_detection/service/cacheService.dart';
import 'package:face_detection/sublocator.dart';

import 'enum/loading_state.dart';

class BaseModel extends ChangeNotifier {
  final bool _initialised = false;
  bool get initialised => _initialised;

  final bool _onModelReadyCalled = false;
  bool get onModelReadyCalled => _onModelReadyCalled;

  final bool _disposed = false;
  bool get disposed => _disposed;

  final PreferenceService preferenceService = locator<PreferenceService>();

  final ApiService apiService = locator<ApiService>();

  ViewState _currentState = ViewState.IdleState;

  ViewState get currentState => _currentState;

  @override
  void notifyListeners() {
    if (!disposed) {
      super.notifyListeners();
    }
  }

  void setState(ViewState state) {
    _currentState = state;
    notifyListeners();
  }

  @protected
  @mustCallSuper
  Future onInit() async {
    return true;
  }
}
