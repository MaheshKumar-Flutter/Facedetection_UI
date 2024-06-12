import 'package:face_detection/router.dart';
import 'package:face_detection/service/formfieldstate.dart';
import 'package:face_detection/sublocator.dart';
import 'package:face_detection/utils/colors.dart';
import 'package:face_detection/utils/images.dart';
import 'package:face_detection/utils/spacing.dart';
import 'package:face_detection/utils/style.dart';
import 'package:face_detection/view/Organization/OrganizationController.dart';
import 'package:face_detection/widget/background_widget.dart';
import 'package:face_detection/widget/button.dart';
import 'package:face_detection/widget/custom_textField.dart';
import 'package:face_detection/widget/footer_widget.dart';
import 'package:face_detection/widget/onTapButton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

class OrganizationRegister extends StatefulWidget {
  const OrganizationRegister({super.key});

  @override
  State<OrganizationRegister> createState() => _OrganizationRegisterState();
}

class _OrganizationRegisterState extends State<OrganizationRegister> {
  final TextFormFieldController _textController =
      TextFormFieldController(const ValueKey('orgCode'));

  OrganizationController? viewModel;

  bool _isButtonDisabled = true;

  

  @override
  void initState() {
    super.initState();
    _checkIfEmpty();
  }

  void _checkIfEmpty() {
    setState(() {
      _isButtonDisabled = _textController.text.isEmpty ? true : false;
    });
  }

  bool refresh() {
    bool isdisabled = false;

    if (_textController.text.isEmpty) {
      setState(() {
        isdisabled = true;
      });
    }

    return isdisabled;
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrganizationController>.reactive(
        viewModelBuilder: () => OrganizationController(),
        builder: (BuildContext context, OrganizationController viewModel,
            Widget? child) {
          return Scaffold(
            body: Form(
              key: viewModel.formKey,
              child: BackGroundImage(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    VerticalSpacing.custom(value: 120),
                    SvgPicture.asset(
                      MyImage.organizationhome,
                      width: 250,
                    ),
                    VerticalSpacing.d40px(),
                    const Text(
                      "Organization Code",
                      style: TextStyle(
                          color: MyColors.greyColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: FormFieldTextField(
                        key: ValueKey("orgcode"),
                        controller: viewModel.textController,
                        customInputType: TextInputType.text,
                        contentPadding: const EdgeInsets.all(13),
                      ),
                    ),
                    VerticalSpacing.custom(value: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: OnTapButton(
                        key: ValueKey("login"),
                          title: "Submit",
                          //disabled: _isButtonDisabled ? refresh():false,
                          onPressed: () {
                             if (viewModel.formKey.currentState!
                                      .validate() !=
                                  true) {
                                return;
                              }
                            navigationService.pushNamed(
                                Routes.organizationVerificationSuccess);
                          }),
                    ),
                    const Spacer(),
                    const FooterLayer(),
                    VerticalSpacing.d30px(),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
