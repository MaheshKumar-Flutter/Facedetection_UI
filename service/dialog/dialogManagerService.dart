import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'alertRequest.dart';
import 'dialog_alert_response.dart';

class DialogService {
  final _dialogNavigationKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get dialogNavigationKey => _dialogNavigationKey;
  Function(AlertRequest)? _showDialogListener;
  Function(AlertRequest)? _showCustomContentDialogListener;
  Function(AlertRequest)? _showCustomDialogListener;
  Function(AlertRequest)? _showConfirmationDialogListener;
  Function(AlertRequest)? _bottomSheetListener;
  Function(AlertRequest)? _customDialogue;
  Function(AlertRequest)? _bottomNonOverlaySheet;
  Function(AlertRequest)? _showISDialog;

  Completer<AlertResponse>? _dialogCompleter;
  final Map<ValueKey, Completer<AlertResponse>?> _dialogCompleterMap = {};

  void registerDialogListener(
    Function(AlertRequest) showDialogListener,
    Function(AlertRequest) showCustomDialogListener,
    Function(AlertRequest) showConfirmationDialogListener,
    Function(AlertRequest) showCustomContentDialogListener,
    Function(AlertRequest) bottomSheetListener,
    Function(AlertRequest) customDialogue,
      Function(AlertRequest) showISDialog,
    Function(AlertRequest) showNonOverlayBottomSheet,

  ) {
    _showDialogListener = showDialogListener;
    _showCustomDialogListener = showCustomDialogListener;
    _showCustomContentDialogListener = showCustomContentDialogListener;
    _showConfirmationDialogListener = showConfirmationDialogListener;
    _showConfirmationDialogListener = showConfirmationDialogListener;
    _bottomSheetListener = bottomSheetListener;
    _customDialogue = customDialogue;
    _bottomNonOverlaySheet = showNonOverlayBottomSheet;
    _showISDialog = showISDialog;
  }

  Future<AlertResponse>? showDialog(
      {ValueKey key = const ValueKey("showDialogue"),
      String title = 'Message',
      String description = '',
      String buttonTitle = 'OK',
      bool dismissable = true}) {
    // _dialogCompleterMap[key] = Completer<AlertResponse>();
    _dialogCompleter = Completer<AlertResponse>();
    _showDialogListener!(AlertRequest(
        description: description,
        buttonTitle: buttonTitle,
        title: title,
        dismissable: dismissable));

    return _dialogCompleter?.future;
  }

  Future<AlertResponse>? showCustomDialog(
      {ValueKey key = const ValueKey("showCustomDialogue"),
      String title = 'Message',
      String description = '',
      required Widget child,
      bool dismissable = true}) {
    //_dialogCompleterMap[key] = Completer<AlertResponse>();
    _dialogCompleter = Completer<AlertResponse>();
    _showCustomContentDialogListener!(AlertRequest(
        description: description,
        title: title,
        contentWidget: child,
        dismissable: dismissable));

    // return _dialogCompleterMap[key]?.future;
    return _dialogCompleter?.future;
  }
  Future<AlertResponse>? showISDialog(
      {ValueKey key = const ValueKey("showISDialogDialogue"),
        String title = 'Message',
        String description = '',
        Widget? child,
        bool isErrorIcon = false,
        bool dismissable = false}) {
    _dialogCompleter = Completer<AlertResponse>();
    _showISDialog!(AlertRequest(
        description: description,
        title: title,
        contentWidget: child,
        isError: isErrorIcon,
        dismissable: dismissable));
    return _dialogCompleter?.future;
  }



  Future<AlertResponse>? showCustomAlertDialog(
      {String? image,
      String? title,
      String? subtitle,
      String primaryButton = 'OK',
      String? secondaryButton}) {
    _dialogCompleter = Completer<AlertResponse>();
    _showCustomDialogListener!(AlertRequest(
        image: image,
        description: subtitle,
        buttonTitle: primaryButton,
        secondaryButtonTitle: secondaryButton,
        title: title));

    return _dialogCompleter?.future;
  }

  Future<AlertResponse>? showConfirmationAlertDialog(
      {String? image,
      String? title,
      String? subtitle,
      String primaryButton = 'OK',
      String? secondaryButton,
      bool dismissable = true}) {
    _dialogCompleter = Completer<AlertResponse>();
    _showConfirmationDialogListener!(AlertRequest(
        image: image,
        description: subtitle,
        buttonTitle: primaryButton,
        secondaryButtonTitle: secondaryButton,
        title: title,
        dismissable: dismissable));

    return _dialogCompleter?.future;
  }

  Future<AlertResponse>? showBottomSheet(
      {String? title,
      Widget? iconWidget,
      required Widget child,
      bool isdismissable = true,
      bool showActionBar = true,
      bool showCloseIcon = true}) {
    _dialogCompleter = Completer<AlertResponse>();
    _bottomSheetListener!(AlertRequest(
        title: title,
        dismissable: isdismissable,
        iconWidget: iconWidget,
        contentWidget: child,
        showActionBar: showActionBar,
        showCloseIcon: showCloseIcon));

    return _dialogCompleter?.future;
  }

  Future<AlertResponse>? showNonOverlayBottomSheet(
      {String? title,
      Widget? iconWidget,
      required Widget child,
      bool showActionBar = true,
      bool showCloseIcon = true}) {
    _dialogCompleter = Completer<AlertResponse>();
    _bottomNonOverlaySheet!(AlertRequest(
        title: title,
        iconWidget: iconWidget,
        contentWidget: child,
        showActionBar: showActionBar,
        showCloseIcon: showCloseIcon));

    return _dialogCompleter?.future;
  }

  Future<AlertResponse>? preCustomDialogue(
      {String? image,
      ValueKey key = const ValueKey("showImageDialogue"),
      String? title,
      String? description,
      dynamic state,
      String primaryButton = 'Ok',
      String? secondaryButton,
      bool dismissable = true}) {
    _dialogCompleter = Completer<AlertResponse>();
    _dialogCompleterMap[key] = Completer<AlertResponse>();
    _customDialogue!(AlertRequest(
        image: image,
        state: state,
        description: description,
        buttonTitle: primaryButton,
        secondaryButtonTitle: secondaryButton,
        title: title,
        dismissable: dismissable));

    return _dialogCompleter?.future;
  }

  void dialogComplete(AlertResponse? alertResponse,
      {ValueKey key = const ValueKey("showDialogue")}) {
    _dialogCompleter?.complete(alertResponse);
    _dialogNavigationKey.currentState?.pop(alertResponse);
    _dialogCompleter = null;
  }

  void dialogSuccessComplete(AlertResponse? alertResponse,
      {ValueKey key = const ValueKey("showDialogue")}) {
    _dialogCompleter?.complete(alertResponse);
    _dialogNavigationKey.currentState?.pop(alertResponse);
    //  _dialogCompleterMap[key] = null;
    _dialogCompleter = null;
  }
}
