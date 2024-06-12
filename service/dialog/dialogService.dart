import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:face_detection/utils/colors.dart';
import 'package:face_detection/utils/images.dart';
import 'package:face_detection/widget/button.dart';

import '../../enum/basicImageState.dart';
import '../../sublocator.dart';
import '../../utils/spacing.dart';
import '../../utils/style.dart';
import 'alertRequest.dart';
import 'dialogManagerService.dart';
import 'dialog_alert_response.dart';

class DialogManager extends StatefulWidget {
  final Widget child;

  const DialogManager({super.key, required this.child});

  @override
  _DialogManagerState createState() => _DialogManagerState();
}

class _DialogManagerState extends State<DialogManager> {
  final _dialogService = locator<DialogService>();

  @override
  void initState() {
    super.initState();
    _dialogService.registerDialogListener(
        _showInfoDialog,
        _showCustomAlertDialog,
        _showConfirmationDialog,
        _showCustomDialog,
        _bottomSheet,
        _preCustomDialogue,
        _showISDialog,
        _bottomNonOverlaySheet);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(left: 0, right: 0, top: 0, bottom: 0, child: widget.child),
      ],
    );
  }

  void _preCustomDialogue(AlertRequest request) {
    showDialog(
        barrierDismissible: request.dismissable,
        context: context,
        builder: (context) {
          return PopScope(
              onPopInvoked: (value) {
                Future.value(true);
              },
              child: AlertDialog(
                contentPadding:
                    const EdgeInsets.only(top: 15, left: 12, right: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                content: Container(
                    //padding: const EdgeInsets.only(bottom: 5),
                    width: MediaQuery.sizeOf(context).width * 0.2,
                    decoration: const BoxDecoration(
                      color: MyColors.whiteColor,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: MyColors.enableBorderColor,
                          ),
                          child: SvgPicture.asset(
                            MyImage.selecticon,
                          ),
                        ),
                        VerticalSpacing.custom(
                          value: 10,
                        ),
                        // const Text("Message",style: MyTextStyle.popUpTitle),
                        // VerticalSpacing.custom(value: 6,),
                        Text(request.description ?? "",
                            style: MyTextStyle.popupDescription),
                        VerticalSpacing.custom(
                          value: 6,
                        ),
                        Button(
                          "Done",
                          height: 0,
                          width: 0,
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, top: 5, bottom: 5),
                          onPressed: () {
                            _dialogService
                                .dialogComplete(AlertResponse(status: true));
                          },
                          textStyle: MyTextStyle.popupButton,
                        ),
                      ],
                    )),
              ));
        });
  }

  void _showISDialog(AlertRequest request) {
    showDialog(
        context: context,
        builder: (context) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(false);
            },
            child: AlertDialog(
              contentPadding: const EdgeInsets.all(0),
              backgroundColor: Colors.transparent,
              elevation: 0,
              content: Wrap(
                children: [
                  if (request.dismissable)
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: InkWell(
                              onTap: () {
                                _dialogService.dialogComplete(
                                    AlertResponse(status: false));
                              },
                              child: const Icon(
                                Icons.close,
                                color: MyColors.whiteColor,
                                size: 30,
                              )),
                        )),
                  Center(
                      child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 20, left: 10, right: 10),
                      child: Column(
                        children: [
                          // SvgPicture.asset(MyImage.warningIcon) :
                          //
                          Container(
                            height: 45,
                            width: 45,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: request.isError == true
                                  ? MyColors.orangeBackGroundColor
                                  : MyColors.enableBorderColor,
                            ),
                            child: SvgPicture.asset(
                              request.isError == true
                                  ? MyImage.warningIcon
                                  : MyImage.successicon,
                            ),
                          ),
                          VerticalSpacing.custom(
                            value: 10,
                          ),
                          Text(
                            request.description ?? "",
                            style: MyTextStyle.medium,
                            textAlign: TextAlign.center,
                          ),
                          VerticalSpacing.custom(
                            value: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 60),
                            child: Button(
                              "Done",
                              height: 0,
                              width: 100,
                              padding: const EdgeInsets.only(
                                  left: 5, right: 5, top: 5, bottom: 5),
                              onPressed: () {
                                _dialogService.dialogComplete(
                                    AlertResponse(status: true));
                              },
                              textStyle: MyTextStyle.popupButton,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
          );
        });
  }

  void _showCustomDialog(AlertRequest request) {
    showDialog(
        context: context,
        builder: (context) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(false);
            },
            child: AlertDialog(
              contentPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              elevation: 0,
              content: Wrap(
                children: [
                  if (request.dismissable)
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: InkWell(
                              onTap: () {
                                _dialogService.dialogComplete(
                                    AlertResponse(status: false));
                              },
                              child: const Icon(
                                Icons.close,
                                color: MyColors.whiteColor,
                                size: 30,
                              )),
                        )),
                  request.contentWidget ?? Container(),
                ],
              ),
            ),
          );
        });
  }

  void _showInfoDialog(AlertRequest request) {
    showCupertinoDialog(
        context: context,
        barrierDismissible: request.dismissable,
        builder: (context) {
          return WillPopScope(
              onWillPop: () async {
                _dialogService.dialogComplete(AlertResponse(status: false));
                return false;
              },
              child: CupertinoAlertDialog(
                title: Text(
                  request.title ?? '',
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: MyColors.textColor,
                      letterSpacing: 0.5),
                ),
                content: Text(request.description ?? '',
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: MyColors.textColor,
                        letterSpacing: 0.5)),
                actions: <Widget>[
                  CupertinoDialogAction(
                    child: Text(
                      request.buttonTitle ?? '',
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: MyColors.textColor,
                          letterSpacing: 0.5),
                    ),
                    onPressed: () {
                      _dialogService
                          .dialogComplete(AlertResponse(status: true));
                    },
                  ),
                ],
              ));
        });
  }

  void _showConfirmationDialog(AlertRequest request) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return WillPopScope(
              onWillPop: () async {
                _dialogService.dialogComplete(AlertResponse(status: false));
                return false;
              },
              child: CupertinoAlertDialog(
                title: Text(
                  request.title ?? '',
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: MyColors.textColor,
                      letterSpacing: 0.5),
                ),
                content: Text(request.description ?? '',
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: MyColors.textColor,
                        letterSpacing: 0.5)),
                actions: <Widget>[
                  if (request.secondaryButtonTitle != null)
                    CupertinoDialogAction(
                      child: Text(
                        request.secondaryButtonTitle ?? '',
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: MyColors.textColor,
                            letterSpacing: 0.5),
                      ),
                      onPressed: () {
                        _dialogService
                            .dialogComplete(AlertResponse(status: false));
                      },
                    ),
                  CupertinoDialogAction(
                    child: Text(
                      request.buttonTitle ?? '',
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: MyColors.textColor,
                          letterSpacing: 0.5),
                    ),
                    onPressed: () {
                      _dialogService
                          .dialogComplete(AlertResponse(status: true));
                    },
                  ),
                ],
              ));
        });
  }

  void _showCustomAlertDialog(AlertRequest request) {
    showDialog(
        context: context,
        builder: (context) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(false);
            },
            child: AlertDialog(
              contentPadding: const EdgeInsets.all(20),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(24.0))),
              content: SizedBox(
                height: 340,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      MyImage.logo,
                      width: 100,
                      height: 100,
                    ),

                    VerticalSpacing.custom(value: 30),

                    Text(
                      request.title ?? '',
                      textScaleFactor: 1,
                      style: MyTextStyle.medium,
                    ),

                    VerticalSpacing.d20px(),

                    Text(
                      request.description ?? '',
                      textAlign: TextAlign.center,
                      textScaleFactor: 1,
                      style: MyTextStyle.medium,
                    ),

                    VerticalSpacing.d20px(),
                    //
                    // Button(request.buttonTitle ?? '', width: double.infinity, key: const Key('btnPrimary'), onPressed: (){
                    //   _dialogService.dialogComplete(AlertResponse(status: true));
                    // }),
                    //
                    // request.secondaryButtonTitle != null ? MaterialButton(onPressed: (){
                    //   _dialogService.dialogComplete(AlertResponse(status: false));
                    // }, child: Text(request.secondaryButtonTitle ?? '', textScaleFactor: 1, style: AppTextStyle.button.copyWith(color: AppColor.primary),)) : Container()
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _bottomSheet(AlertRequest request) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        isDismissible: request.dismissable,
        //barrierColor: AppColor.primary,
        backgroundColor: Colors.transparent,
        useRootNavigator: true,
        builder: (context) => Container(
              padding: MediaQuery.of(context).viewInsets,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).viewPadding.bottom > 0
                      ? MediaQuery.of(context).viewPadding.bottom
                      : 25),
              decoration: const BoxDecoration(
                color: MyColors.whiteColor,
                // borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(15),
                //     topRight: Radius.circular(15)),
              ),
              child: Wrap(
                children: [
                  // Align(
                  //   child: Container(
                  //     height: 2.0,
                  //     width: 30.0,
                  //     margin: const EdgeInsets.only(top: 22.0),
                  //     decoration: const BoxDecoration(
                  //       color: MyColors.lightGreyContainer,
                  //       borderRadius: BorderRadius.all(Radius.circular(2.0)),
                  //     ),
                  //   ),
                  // ),
                  if (request.showActionBar == true)
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 5, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (request.iconWidget != null)
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: request.iconWidget,
                            ),
                          Expanded(
                              child: request.title == null
                                  ? Container()
                                  : Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      child: Text(
                                        request.title ?? '',
                                        textScaleFactor: 1,
                                        style: MyTextStyle.medium.copyWith(
                                          fontSize: 17,
                                        ),
                                      ),
                                    )),
                          if (request.showCloseIcon == true)
                            IconButton(
                              onPressed: () {
                                _dialogService.dialogComplete(
                                    AlertResponse(status: false));
                              },
                              icon: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black12,
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const Icon(
                                  Icons.close,
                                  size: 20,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  SingleChildScrollView(
                      child: Wrap(
                    children: [
                      SafeArea(child: request.contentWidget ?? Container()),
                    ],
                  )),
                ],
              ),
            ));
  }

  void _bottomNonOverlaySheet(AlertRequest request) {
    showBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) => Material(
              child: Container(
                padding: MediaQuery.of(context).viewInsets,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).viewPadding.bottom > 0
                        ? MediaQuery.of(context).viewPadding.bottom
                        : 25),
                decoration: const BoxDecoration(
                  color: MyColors.whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                child: Wrap(
                  children: [
                    Align(
                      child: Container(
                        height: 4.0,
                        width: 24.0,
                        margin: const EdgeInsets.only(top: 8.0),
                        decoration: const BoxDecoration(
                          color: MyColors.textColor,
                          borderRadius: BorderRadius.all(Radius.circular(2.0)),
                        ),
                      ),
                    ),
                    if (request.showActionBar == true)
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 5, top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (request.iconWidget != null)
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: request.iconWidget,
                              ),
                            Expanded(
                                child: request.title == null
                                    ? Container()
                                    : Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: Text(
                                          request.title ?? '',
                                          textScaleFactor: 1,
                                          style: MyTextStyle.medium.copyWith(
                                            fontSize: 17,
                                          ),
                                        ),
                                      )),
                            if (request.showCloseIcon == true)
                              IconButton(
                                onPressed: () {
                                  _dialogService.dialogComplete(
                                      AlertResponse(status: false));
                                },
                                icon: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black12,
                                  ),
                                  padding: const EdgeInsets.all(5),
                                  child: const Icon(
                                    Icons.close,
                                    size: 20,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    SingleChildScrollView(
                        child: Wrap(
                      children: [
                        SafeArea(child: request.contentWidget ?? Container()),
                      ],
                    )),
                  ],
                ),
              ),
            ));
  }
}

// class MyDialogueCustom extends StatelessWidget {
//   final AlertRequest request;
//   const MyDialogueCustom({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  Container(
//           height: 150,
//           width: 150,
//           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(color:_getColor(request.state) )),
//           child: Stack(
//             clipBehavior: Clip.none,
//             alignment: Alignment.topCenter,
//             children: [
//               Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     VerticalSpacing.d20px(),
//                     Text(
//                       "${request.title}",
//                       style: MyTextStyle.header1.copyWith(
//                           fontSize: 17, fontWeight: FontWeight.bold),
//                     ),
//                     VerticalSpacing.d20px(),
//                     Text(
//                       "${request.description}",
//                       style: MyTextStyle.header1.copyWith(
//                           fontSize: 14, fontWeight: FontWeight.w500),
//                     ),
//                     VerticalSpacing.d30px(),
//                     CupertinoDialogAction(
//                       child: Text(
//                         request.buttonTitle ?? '',
//                         style: const TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.w500,
//                             color: MyColors.textColor,
//                             letterSpacing: 0.5),
//                       ),
//                       onPressed: () {
//                         _dialogService.dialogComplete(
//                             AlertResponse(status: true));
//                       },
//                     ),
//                   ]),
//               Positioned(
//                   top: -59,
//                   child: Container(
//                     height: 50,
//                     width: 50,
//                     decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                     ),
//                     child: SvgPicture.asset(_getImage(request.state)),
//                   ))
//             ],
//           )),,
//     );
//   }
// }
