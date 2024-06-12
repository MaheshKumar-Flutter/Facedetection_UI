import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'inpuValidator.dart';
import 'inputFormatter.dart';

class FormFieldStetController {
  late Key fieldKey;
  String? requiredText;

  TextEditingController textEditingController =  TextEditingController();
  FocusNode _focusNode = FocusNode();


  TextCapitalization textCapitalization = TextCapitalization.none;

  String? Function(String?)? validator =
      (String? p1) => InputValidator.emptyValidator(
            p1,
          );
  List<TextInputFormatter> inputFormatter = InputFormatter.defaultFormatter;

  late TextInputType textInputType;

  bool required;
  bool allowPaste;

  int maxLength;
  int minLines;
  int maxLines;

  String? overrideErrorText;

  String get text => textEditingController.text;

  set text(value) {
    textEditingController.text = value;
  }

  clear() {
    textEditingController.clear();
  }

  FocusNode get focusNode => _focusNode;

  bool get hasFocus => focusNode.hasFocus;

  FormFieldStetController(
    this.fieldKey, {

    this.textInputType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    this.validator = InputValidator.emptyValidator,
    this.inputFormatter = const [],
    this.maxLength = 1000,
    this.minLines = 1,
    this.maxLines = 1000,
    this.required = false,
    this.allowPaste = true,
  });

  dispose() {
    _focusNode.dispose();
    _focusNode = FocusNode();
  }
}

class NameFormFieldController extends FormFieldStetController {

  String? requiredText;

  bool _strictFormatter = false;

  NameFormFieldController(Key fieldKey,  { bool required = true, this.requiredText }) : super(fieldKey, required: required);

  NameFormFieldController.strict(Key fieldKey,  { bool required = true, this.requiredText }) : super(fieldKey, required: required) {
    _strictFormatter = true;
  }

  @override
  String? Function(String? p1)? get validator => !this.required ? null : (String? p1) => InputValidator.nameValidator(p1, requiredText: requiredText);

  @override
  TextInputType get textInputType => TextInputType.name;

  @override
  List<TextInputFormatter> get inputFormatter => _strictFormatter ? InputFormatter.nameStrictFormatter : InputFormatter.nameFormatter;

  @override
  TextCapitalization get textCapitalization => TextCapitalization.words;

}


class NumberFormFieldController extends FormFieldStetController {

  String? requiredText;

  NumberFormFieldController(Key fieldKey,  { bool required = false, this.requiredText }) : super(fieldKey, required: required);

  @override
  String? Function(String? p1)? get validator => !this.required ? null : (String? p1) => InputValidator.numberValidator(p1, requiredText: requiredText);

  @override
  TextInputType get textInputType => const TextInputType.numberWithOptions(decimal: true,);

  @override
  List<TextInputFormatter> get inputFormatter => InputFormatter.numberFormatter;

  @override
  TextCapitalization get textCapitalization => TextCapitalization.sentences;

}

class EmailFormFieldController extends FormFieldStetController {
  String? requiredText;

  EmailFormFieldController(Key fieldKey,
      {bool required = true, this.requiredText})
      : super(fieldKey, required: required);

  @override
  String? Function(String? p1)? get validator => (String? p1) =>
      InputValidator.emailValidator(p1, requiredText: requiredText);

  @override
  TextInputType get textInputType => TextInputType.emailAddress;
}

class PasswordFormFieldController extends FormFieldStetController {
  String? requiredText;

  PasswordFormFieldController(Key fieldKey,
      {bool required = true, this.requiredText})
      : super(fieldKey, required: required);

  @override
  String? Function(String? p1)? get validator => (String? p1) =>
      InputValidator.passwordValidator(p1, requiredText: requiredText);

  @override
  TextInputType get textInputType => TextInputType.visiblePassword;
}


class MiIDFormFieldController extends FormFieldStetController {

  String? requiredText;

  MiIDFormFieldController(Key fieldKey, { int maxLength = 10, bool required = true, this.requiredText }) : super(fieldKey, maxLength: maxLength, required: required);

  @override
  List<TextInputFormatter> get inputFormatter => InputFormatter.miidFormatter;

  @override
  String? Function(String? p1)? get validator => !this.required ? null : (String? p1) => InputValidator.phoneValidator(p1, requiredText: requiredText);

  @override
  TextInputType get textInputType => TextInputType.phone;

  @override
  set maxLength(int _maxLength) {
    super.maxLength = _maxLength;
  }

}
class PhoneFormFieldController extends FormFieldStetController {

  String? requiredText;

  PhoneFormFieldController(Key fieldKey, { int maxLength = 10, bool required = true, this.requiredText }) : super(fieldKey, maxLength: maxLength, required: required);

  @override
  List<TextInputFormatter> get inputFormatter => InputFormatter.phoneNoFormatter;

  @override
  String? Function(String? p1)? get validator => !this.required ? null : (String? p1) => InputValidator.phoneValidator(p1, requiredText: requiredText);

  @override
  TextInputType get textInputType => TextInputType.phone;

  @override
  set maxLength(int _maxLength) {
    super.maxLength = _maxLength;
  }

}

class DropdownFieldController<T> {

  Key fieldKey;
  FocusNode focusNode = new FocusNode();
  T? value;
  List<T> dataList;
  String keyId;
  String valueId;
  bool required;

  DropdownFieldController(this.fieldKey, { required this.keyId, required this.valueId, this.value, this.dataList = const [], this.required = true });

  String? validator(T? value) {
    if (value == null && required)
      return "Required !";

    return null;
  }

  setValue(T? value) {
    this.value = value;
  }

  List<T> get list => dataList;

  set list(List<T> list) {
    this.value = null;
    this.dataList = list;
  }

  clear() {
    list = [];
  }

}

class TextFormFieldController extends FormFieldStetController {

  String? requiredText;

  TextInputType? inputType;

  TextCapitalization? textCapital;

  TextFormFieldController(Key fieldKey,  { bool required = false, this.inputType, this.textCapital, this.requiredText }) : super(fieldKey, required: required);

  @override
  String? Function(String? p1)? get validator => !this.required ? null : (String? p1) => InputValidator.emptyValidator(p1, requiredText: requiredText);

  @override
  TextInputType get textInputType => this.inputType??  TextInputType.text;

  @override
  TextCapitalization get textCapitalization => this.textCapital?? TextCapitalization.sentences;

  void addListener(void Function() checkIfEmpty) {}

}

class AmountFormFieldController extends FormFieldStetController {

  String? requiredText;

  AmountFormFieldController(Key fieldKey,  { bool required = false, this.requiredText }) : super(fieldKey, required: required);

  @override
  String get text {
    if (textEditingController.text.isEmpty == true) {
      return "";
    }

    NumberFormat formatter = NumberFormat.currency(
      name: "INR",
      locale: 'en_IN',
      decimalDigits: 0,
      symbol: '₹',
    );
    String value = textEditingController.text.replaceAll(" ", "");
    if (value.trim() == "₹"){
      return "";
    }
    return formatter.parse(textEditingController.text).toString();
  }

  @override
  set text(value) {
    NumberFormat formatter = NumberFormat.currency(
      name: "INR",
      locale: 'en_IN',
      decimalDigits: 0,
      symbol: '₹',
    );
    try {
      textEditingController.text = formatter.format(double.parse(value));
    } catch (ex) {
      print(value);
      print(ex);
      textEditingController.text = value;
    }
  }

  @override
  String? Function(String? p1)? get validator => !this.required ? null : (String? p1) => InputValidator.emptyValidator(p1, requiredText: requiredText);

  @override
  TextInputType get textInputType => TextInputType.numberWithOptions(decimal: true);

  @override
  List<TextInputFormatter> get inputFormatter => [ CurrencyInputFormatter(maxDigits: 50) ];

  @override
  bool get allowPaste => false;

  @override
  TextCapitalization get textCapitalization => TextCapitalization.sentences;

}