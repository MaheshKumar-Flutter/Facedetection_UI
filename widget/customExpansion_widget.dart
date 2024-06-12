import 'package:flutter/material.dart';
import 'package:face_detection/utils/spacing.dart';

import '../utils/colors.dart';

class CustomExpansionTile extends StatefulWidget {
  final Widget? title;
  final Widget? leading;
  final Widget? trailing;
  final List<Widget>? children;
  final BoxDecoration? customDecoration;
  final EdgeInsets? contentPadding;
  final bool linearGraient;
  final Color? requiredColor;
  final Color? iconColor;
  final Color? coloredBox;
  final EdgeInsets? headerPadding;

  const CustomExpansionTile({
    @required this.title,
    this.leading,
    this.trailing,
    this.linearGraient = false,
    this.customDecoration,
    this.contentPadding,
    this.requiredColor,
    @required this.children,
    super.key,
    this.headerPadding,
    this.iconColor,
    this.coloredBox,
  });

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeIn);
  late AnimationController _controller;
  late Animation<double> _heightFactor;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _heightFactor = _controller.drive(_easeInTween);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget? child) {
          return _mainBody();
        });
  }

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((void value) {
          if (!mounted) {
            return;
          }
          setState(() {
            // Rebuild without widget.children.
          });
        });
      }
    });
  }

  Widget _buildExpandIcon() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      transform: Matrix4.rotationZ(_isExpanded ? 2 * 3.14 : 0),
      child: Icon(
        _isExpanded ? Icons.expand_less_rounded : Icons.expand_more,
        color: widget.iconColor,
      ),
    );
  }

  Widget _mainBody() {
    return Container(
        //padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: widget.customDecoration ??
            BoxDecoration(
                color: widget.requiredColor == null
                    ? null
                    : _isExpanded
                        ? MyColors.whiteColor
                        : MyColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
                border: const Border.symmetric(vertical: BorderSide.none),
                gradient: widget.linearGraient == false
                    ? null
                    : _isExpanded
                        ? LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                                MyColors.blueJeansColor.withOpacity(0.1),
                                MyColors.blueJeansColor.withOpacity(0.05),
                                MyColors.whiteColor.withOpacity(0.1),
                                MyColors.whiteColor,
                              ])
                        : null),
        child: Column(
          children: [
            InkWell(
              onTap: _toggleExpansion,
              child: Padding(
                padding: widget.headerPadding ??
                    const EdgeInsets.only(
                      right: 10,
                      top: 14,
                      left: 10,
                    ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    widget.leading ?? const SizedBox.shrink(),
                    HorizontalSpacing.d10px(),
                    widget.title ?? const SizedBox.shrink(),
                    const Spacer(),
                    widget.trailing ?? _buildExpandIcon()
                  ],
                ),
              ),
            ),
            _isExpanded
                ? ClipRRect(
                    child: Align(
                      heightFactor: _heightFactor.value,
                      child: ColoredBox(
                        color: widget.coloredBox ?? Colors.transparent,
                        child: Padding(
                          padding: widget.contentPadding ??
                              const EdgeInsets.only(
                                right: 8,
                                top: 8,
                                left: 8,
                              ),
                          child: Column(
                            children: widget.children ?? [],
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ));
  }
}
