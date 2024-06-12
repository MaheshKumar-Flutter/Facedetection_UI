// import 'package:flutter/material.dart';
// import 'package:face_detection/utils/colors.dart';
// import 'package:face_detection/utils/style.dart';
//
// import '../service/formfieldstate.dart';
//
// Color _focusBgColor = MyColors.deepCerisePink;
// Color _errorBgColor = const Color(0xffFFF5F5);
// Color _errorColor = const Color(0xffEB1414);
//
// TextStyle _errorTextStyle = const TextStyle(fontSize: 14, fontFamily: MyTextStyle.robotoFamily, fontWeight: FontWeight.w400, color: MyColors.redColor,);
// TextStyle _labelTextStyle = const TextStyle(fontSize: 16, fontFamily:  MyTextStyle.robotoFamily, fontWeight: FontWeight.w700, color: Color(0xff001533),);
// TextStyle _bodyTextStyle = const TextStyle(fontSize: 16, fontFamily:  MyTextStyle.robotoFamily, fontWeight: FontWeight.w500, color: const Color(0xff202124),);
// TextStyle _hintTextStyle = const TextStyle(fontSize: 16, fontFamily:  MyTextStyle.robotoFamily, fontWeight: FontWeight.w500, color: const Color(0xffbdc1c6),);
//
// BorderRadius _borderRadius = BorderRadius.circular(6.0);
//
//
// class DropdownField<T> extends StatefulWidget {
//
//   DropdownFieldController<T> controller;
//
//   String title;
//   String placeholder;
//   EdgeInsets margin;
//   EdgeInsets? padding;
//   Function(T)? onChange;
//   Function? onAddNewPressed;
//   bool withAdd = false;
//   bool showRequiredHint = true;
//
//   DropdownField(this.title, this.controller, {
//     this.placeholder = "",
//     this.margin = EdgeInsets.zero,
//     this.padding,
//     this.showRequiredHint = true,
//     this.onChange
//   });
//
//   DropdownField.withAdd(this.title, this.controller, {
//     this.placeholder = "",
//     this.margin = EdgeInsets.zero,
//     this.onChange,
//     this.padding,
//     this.showRequiredHint = true,
//     this.onAddNewPressed
//   }) {
//     this.withAdd = true;
//   }
//
//   @override
//   _DropdownFieldState<T> createState() => _DropdownFieldState<T>();
// }
//
// class _DropdownFieldState<TL extends State<DropdownField<T>> {
//
//   BorderRadius borderRadius = BorderRadius.circular(5);
//
//   List<DropdownMenuItem<T>> get dropdownMenuItemWidget {
//     return widget.controller.list.map<DropdownMenuItem<T>>((T value) {
//       Map data = value.toJson();
//       return DropdownMenuItem<T>(
//         value: value,
//         child: Text(data[widget.controller.valueId] ?? '', style: _bodyTextStyle, ),
//       );
//     }).toList();
//   }
//
//   T? emptyObject;
//
//   @override
//   void initState() {
//     if (widget.withAdd) {
//       Map<String, dynamic> map = new Map();
//       map[widget.controller.keyId] = -1;
//       map[widget.controller.valueId] = "Create New";
//       BaseModel.createFromMap<T>(map).then((value) {
//         setState(() {
//           emptyObject = value;
//         });
//       });
//     }
//     super.initState();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: widget.margin,
//       child: FormField<T>(
//           initialValue: widget.controller.value,
//           validator: (value) {
//             return widget.controller.validator(value);
//             // if (!widget.controller.required && widget.controller.text.isEmpty) {
//             //   return null;
//             // }
//             //
//             // if (widget.controller.required || widget.controller.text.isNotEmpty) {
//             //   return widget.controller.validator(value);
//             // }
//             //
//             // return null;
//           },
//           builder: (FormFieldState state) {
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//
//                 Padding(
//                   padding:const EdgeInsets.only(left: 4.0),
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: Text(
//                           widget.title,
//                           style: _labelTextStyle,
//                         ),
//                       ),
//
//                       if (state.hasError && widget.showRequiredHint)
//                         Text(
//                           state.errorText ?? '',
//                           style: _errorTextStyle,
//                         ),
//
//                     ],
//                   ),
//                 ),
//
//                 const Padding(
//                   padding: EdgeInsets.only(top:4),
//                 ),
//
//                 SizedBox(
//                   height: 46,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: state.hasError ? _errorBgColor : _focusBgColor,
//                       border: _outlineInputBorder(state.hasError),
//                       borderRadius: _borderRadius,
//                     ),
//                     padding: widget.padding ?? const EdgeInsets.symmetric(vertical:12, horizontal: 16),
//                     child: DropdownButton<T>(
//                       key: widget.controller.fieldKey,
//                       value: widget.controller.value,
//                       icon: Icon(Icons.keyboard_arrow_down, color: AppColor.textOnSurface,),
//                       iconSize: 24,
//                       // elevation: 16,
//                       itemHeight: 48,
//                       hint: Text(widget.placeholder,    style: _hintTextStyle,),
//                       style: _bodyTextStyle,
//                       isExpanded: true,
//                       focusNode: widget.controller.focusNode,
//                       underline: Container(),
//                       selectedItemBuilder: (context) {
//                         if (widget.controller.value == null) return [
//                           Container()
//                         ];
//
//                         Map? data = widget.controller.value?.toJson();
//
//                         if (data?[widget.controller.keyId] == -1) {
//                           return [
//                             Container()
//                           ];
//                         }
//
//                         return List<Widget>.from(dropdownMenuItemWidget);
//                       },
//                       onChanged: (T? value) {
//
//                         print("ON CHANGED");
//
//                         if (value == null) return;
//
//                         if (value.toJson()[widget.controller.keyId] == -1) {
//                           setState(() {
//                             widget.controller.setValue(null);
//                           });
//                           return;
//                         }
//
//                         setState(() {
//                           widget.controller.setValue(value);
//                         });
//
//                         state.reset();
//                         state.didChange(value);
//
//                         if (widget.onChange!= null) {
//                           widget.onChange!(value);
//                         }
//                       },
//                       items: [
//                         ...dropdownMenuItemWidget,
//
//                         if (widget.withAdd && emptyObject != null)
//                           DropdownMenuItem<T>(
//                               value: emptyObject,
//                               onTap: (){
//                                 if (widget.onAddNewPressed != null)
//                                   widget.onAddNewPressed!();
//                               },
//                               child: Row(
//                                 children: [
//
//                                   Container(
//                                     width: 24,
//                                     height: 24,
//                                     decoration: BoxDecoration(
//                                         color: AppColor.secondary,
//                                         borderRadius: BorderRadius.circular(5)
//                                     ),
//                                     child: const Center(child: Icon(Icons.add, color: Colors.white, size: 18,)),
//                                   ),
//
//                                   const Padding(
//                                     padding: const EdgeInsets.only(left: 10),
//                                   ),
//
//                                   const Expanded(child: Text("Create New",)),
//                                 ],
//                               )
//                           )
//
//                       ],
//                     ),
//                   ),
//                 ),
//
//               ],
//             );
//           }
//       ),
//     );
//   }
//
//   Border _outlineInputBorder(bool hasError) => Border.all(
//       color: hasError ? _errorColor : AppColor.outline,
//       width: 1
//   );
//
// }
//
//
