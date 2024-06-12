import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_svg/svg.dart';
import 'package:face_detection/service/formfieldstate.dart';
import 'package:face_detection/utils/images.dart';
import 'package:face_detection/utils/style.dart';

import '../utils/colors.dart';

class FormFieldTextField extends StatefulWidget {
  final String? subtitile;
  final String? errorText;
  final String? icon;
  final String? title;
  final Color? myColor;
  final bool enabled;
  final bool autoFocus;
 
  bool isPasswordField;
  int? maxLength;
  int? maxLine;
  TextInputType? customInputType;
  Widget? suffixIcon;
  TextStyle? textstyle;
  TextStyle? headerstyle;
  Widget? prefixWidget;
  EdgeInsets? contentPadding;
  FocusNode? focusNode;
  String Function(String?)? validator;
  TextInputAction textInputAction;
  Function(String)? onChanged;
  List<TextInputFormatter>? inputFormatters;
  ValueChanged<String>? onSubmitted = (terms) {};
  final FormFieldStetController controller;
  FormFieldTextField({
    Key? key,
   
    this.subtitile,
    this.icon,
    this.errorText,
    this.myColor = MyColors.whiteColor,
    this.onChanged,
    this.textstyle,
    this.onSubmitted,
    this.focusNode,
    this.maxLine = 1,
    this.prefixWidget,
    this.contentPadding,
    this.customInputType,
    this.suffixIcon,
    this.inputFormatters,
    this.maxLength,
    this.headerstyle,
    this.validator,
    this.enabled = false,
    this.autoFocus = false,
    this.isPasswordField = false,
    this.textInputAction = TextInputAction.next,
    required this.controller,
    this.title,
  }) : super(key: key);

  FormFieldTextField.password({
    super.key,
    this.subtitile,
    this.icon,
    this.errorText,
    required this.controller,
    this.onSubmitted,
    this.myColor,
    this.textstyle,
    this.focusNode,
    this.onChanged,
    this.validator,
    this.customInputType,
    this.maxLength,
    this.contentPadding,
    this.prefixWidget,
    this.headerstyle,
    this.suffixIcon,
    this.enabled = true,
    this.autoFocus = false,
    this.isPasswordField = true,
    this.textInputAction = TextInputAction.next,
    this.title,
  }) {
    isPasswordField = true;
  }

  @override
  State<FormFieldTextField> createState() => _FormFieldTextFieldState();
}

class _FormFieldTextFieldState extends State<FormFieldTextField> {
  bool isVisible = false;
  bool isFocused = false;
  @override
  void initState() {
    widget.controller.focusNode.addListener(() {
      if (widget.controller.focusNode.hasFocus) {
        isFocused = true;
      } else {
        isFocused = false;
      }
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    widget.controller.focusNode.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
        initialValue: widget.controller.text,
        validator: (value) {
          if (!widget.controller.required && widget.controller.text.isEmpty) {
            return null;
          }

          if ((widget.controller.required ||
                  widget.controller.text.isNotEmpty) &&
              widget.controller.validator != null) {
            return widget.controller.validator!(value);
          }

          return null;
        },
        builder: (FormFieldState state) {
          if (widget.controller.textEditingController.hasListeners) {
            widget.controller.textEditingController.removeListener(() {});
          }

          widget.controller.textEditingController.addListener(() {
            state.reset();
            state.didChange(widget.controller.text);
          });
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title ?? "",
                  style: widget.headerstyle ??
                      MyTextStyle.buttonStyle
                          .copyWith(color: MyColors.blackColor, fontSize: 13)),
              const Padding(
                padding: EdgeInsets.only(top: 6),
              ),
              SizedBox(
                // height: state.hasError ? 90 : null,
                child: TextField(
                  inputFormatters: widget.inputFormatters ?? [],
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  textInputAction: widget.textInputAction,
                  textAlign: TextAlign.start,
                  maxLines: widget.maxLine ?? 1,
                  onChanged: (value) {
                    if (widget.onChanged != null) {
                      widget.onChanged!(value);
                      return;
                    }
                    state.reset();
                    state.didChange(value);
                  },

                  onSubmitted: (value) {
                    if (widget.onSubmitted != null) {
                      widget.onSubmitted!(value);
                    }
                  },
                  //onChanged: widget.onChanged,
                  style: MyTextStyle.medium
                      .copyWith(fontWeight: FontWeight.normal),

                  focusNode: widget.focusNode,
                  maxLength: widget.maxLength,
                  key: widget.key,
                  keyboardType: widget.customInputType,
                  autofocus: widget.autoFocus,
                  controller: widget.controller.textEditingController,
                  enableInteractiveSelection: true,
                  obscureText:
                      widget.isPasswordField && !isVisible ? true : false,
                  decoration: InputDecoration(
                      counterText: "",
                      // labelStyle: MyTextStyle.medium.c,
                      hintStyle: widget.textstyle ??
                          MyTextStyle.medium.copyWith(
                              color: MyColors.hintGreyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                      contentPadding: widget.contentPadding ??
                          const EdgeInsets.only(left: 14),
                      prefixIcon: widget.prefixWidget,
                      hintText: widget.subtitile == null
                          ? null
                          : "Enter ${widget.subtitile}",
                      enabledBorder: _enableBorder,
                      filled: true,
                      fillColor: widget.myColor,
                      border: _defaultBorder,
                      errorBorder: _errorBorder,
                      focusedBorder: _focusBorder,
                      suffixIcon: widget.isPasswordField
                          ? _buildPasswordEyeIcon()
                          : widget.suffixIcon,
                      errorText: state.hasError ? state.errorText : null),
                ),
              )
            ],
          );
        });
  }

  Widget _buildPasswordEyeIcon() {
    return IconButton(
        padding: EdgeInsets.zero,
        icon: SvgPicture.asset(
          isVisible ? MyImage.imagesPassshow : MyImage.imagesPassNotShow,
          height: 18,
          width: 18,
        ),
        onPressed: () {
          setState(() {
            isVisible = !isVisible;
          });
        });
  }

  final InputBorder _defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(04),
      borderSide: const BorderSide(color: MyColors.OTPPincolor, width: 1));

  final InputBorder _enableBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(04),
      borderSide:
          const BorderSide(color: MyColors.OTPPincolor, width: 1));

  final InputBorder _focusBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(04),
      borderSide:
          const BorderSide(color: MyColors.OTPPincolor, width: 1));

  final InputBorder _errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(04),
      
      borderSide:
          const BorderSide(color: Color.fromARGB(255, 197, 8, 8), width: 2));
}
