import 'package:flutter/material.dart';

class BottomNavBarModel {
  const BottomNavBarModel(
      {required this.items,
      this.selectedIndex,
      this.previousIndex,
      this.backgroundColor,
      this.popScreensOnTapOfSelectedTab,
      this.popAllScreensOnTapAnyTabs,
      this.navBarHeight = 0.0,
      this.onTap,
      this.onItemSelected,
      this.selectedScreenBuildContext,
      this.borderRadius});

  final int? selectedIndex;
  final int? previousIndex;
  final Color? backgroundColor;
  final List<BottomNavChild>? items;
  final ValueChanged<int>? onItemSelected;
  final double? navBarHeight;

  final VoidCallback? onTap;

  final BorderRadius? borderRadius;
  final bool? popScreensOnTapOfSelectedTab;
  final bool? popAllScreensOnTapAnyTabs;
  final BuildContext? selectedScreenBuildContext;

  BottomNavBarModel copyWith({
    final int? selectedIndex,
    final int? previousIndex,
    final double? iconSize,
    final Color? backgroundColor,
    final List<BottomNavChild>? items,
    final ValueChanged<int>? onItemSelected,
    final double? navBarHeight,
    final Function(int)? popAllScreensForTheSelectedTab,
    final bool? popScreensOnTapOfSelectedTab,
  }) =>
      BottomNavBarModel(
        selectedIndex: selectedIndex ?? this.selectedIndex,
        previousIndex: previousIndex ?? this.previousIndex,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        items: items ?? this.items,
        onItemSelected: onItemSelected ?? this.onItemSelected,
        navBarHeight: navBarHeight ?? this.navBarHeight,
        popScreensOnTapOfSelectedTab:
            popScreensOnTapOfSelectedTab ?? this.popScreensOnTapOfSelectedTab,
      );
}

class BottomNavChild {
  String? name;
  String? selectedIcon;
  String? unselectedIcon;
  VoidCallback? onTap;
  EdgeInsets? padding;
  EdgeInsets? marginPadding;
  double? navBarheight;
  Color? selectedPrimaryColor;
  Color? unSelectedPrimaryColor;
  double? iconHeight;
  double? iconWidth;
  TextStyle? myTextStyle;

  BottomNavChild(
      {this.name,
      this.selectedIcon,
      this.unselectedIcon,
      this.onTap,
      this.myTextStyle,
      this.iconHeight,
      this.iconWidth,
      this.marginPadding,
      this.navBarheight,
      this.padding,
      this.selectedPrimaryColor,
      this.unSelectedPrimaryColor});
}
