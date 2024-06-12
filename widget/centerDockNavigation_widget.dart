import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:face_detection/model/bottomNavBar.dart';
import 'package:face_detection/utils/colors.dart';
import 'package:face_detection/utils/spacing.dart';
import 'package:face_detection/utils/style.dart';

class BottomNavigationCenterDock extends StatelessWidget {
  final List<BottomNavChild>? items;
  final int? selectedIndex;
  final int? previousIndex;
  final double? navBarHeight;
  final ValueChanged<int>? onItemSelected;
  final BuildContext context;

  const BottomNavigationCenterDock(
      {super.key,
      this.items,
      this.selectedIndex,
      this.previousIndex,
      this.navBarHeight,
      this.onItemSelected,
      required this.context});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: MyBottomNavBarCircular(
          bottomChild: BottomNavBarModel(
              items: items,
              selectedIndex: selectedIndex,
              previousIndex: previousIndex,
              navBarHeight: navBarHeight,
              onItemSelected: onItemSelected,
              selectedScreenBuildContext: context)),
    );
  }
}

class MyBottomNavBarCircular extends StatefulWidget {
  final BottomNavBarModel? bottomChild;
  const MyBottomNavBarCircular(
      {super.key, this.bottomChild = const BottomNavBarModel(items: null)});

  @override
  State<MyBottomNavBarCircular> createState() => _MyBottomNavBarCircularState();
}

class _MyBottomNavBarCircularState extends State<MyBottomNavBarCircular> {
  BottomNavChild? myChild;
  int index = 0;
  Widget _buildMiddleItem(
      BottomNavChild item, final bool isSelected, final double? height) {
    print('${item.name}');
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(0, item.name != null ? -10 : -33),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  shape:
                      item.name == null ? BoxShape.circle : BoxShape.rectangle),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    if (item.name != null) VerticalSpacing.d20px(),
                    SvgPicture.asset(
                      (myChild == item
                              ? item.selectedIcon
                              : item.unselectedIcon) ??
                          (item.selectedIcon ?? ""),
                      height: item.iconHeight,
                      width: item.iconWidth,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        if (item.name == null)
          const SizedBox.shrink()
        else
          Align(
            alignment: Alignment.bottomCenter,
            child: Material(
              type: MaterialType.transparency,
              child: FittedBox(
                child: Text(item.name ?? "",
                    style: MyTextStyle.medium.copyWith(
                        fontSize: 11,
                        color: myChild == item
                            ? MyColors.deepCerisePink
                            : MyColors.hintGreyColor)),
              ),
            ),
          )
      ],
    );
  }

  @override
  void initState() {
    myChild = widget.bottomChild!.items!.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 60,
        decoration: BoxDecoration(color: MyColors.whiteColor, boxShadow: [
          BoxShadow(
              color: MyColors.darkGrey.withOpacity(0.2),
              offset: const Offset(-10, 0),
              blurRadius: 9,
              spreadRadius: 0.2)
        ]),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: widget.bottomChild!.items!
                .asMap()
                .entries
                .map((final bottomChild) {
              return Expanded(
                child: Center(
                  child: GestureDetector(
                      onTap: () {
                        if (widget.bottomChild != null) {
                          if (widget.bottomChild?.onTap != null) {
                            setState(() {
                              myChild = bottomChild.value;
                              index = bottomChild.key;
                              widget.bottomChild!.onTap!();
                            });

                            return;
                          }
                        }

                        setState(() {
                          myChild = bottomChild.value;
                          index = bottomChild.key;
                          widget.bottomChild!.onItemSelected!(index);
                        });
                      },
                      child: DesignBottomChild(
                        height: widget.bottomChild!.navBarHeight,
                        isSelected: bottomChild.value == myChild,
                        item: bottomChild.value,
                      )),
                ),
              );
            }).toList()),
      ),
    );
  }
}

class DesignBottomChild extends StatelessWidget {
  final BottomNavChild? item;
  final double? height;
  final bool isSelected;
  const DesignBottomChild(
      {super.key, this.item, this.height, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    print(isSelected);
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(0, item?.name != null ? -10 : -33),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  shape: item?.name == null
                      ? BoxShape.circle
                      : BoxShape.rectangle),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    if (item?.name != null) VerticalSpacing.d20px(),
                    SvgPicture.asset(
                      (isSelected
                              ? item?.selectedIcon
                              : item?.unselectedIcon) ??
                          (item?.selectedIcon ?? ""),
                      height: item?.iconHeight,
                      width: item?.iconWidth,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        if (item?.name == null)
          const SizedBox.shrink()
        else
          Align(
            alignment: Alignment.bottomCenter,
            child: Material(
              type: MaterialType.transparency,
              child: FittedBox(
                child: Text(item?.name ?? "",
                    style: MyTextStyle.medium.copyWith(
                        fontSize: 11,
                        color: isSelected
                            ? MyColors.deepCerisePink
                            : MyColors.hintGreyColor)),
              ),
            ),
          )
      ],
    );
  }
}
