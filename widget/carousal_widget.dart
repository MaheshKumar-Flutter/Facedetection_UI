import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:face_detection/utils/colors.dart';

class CarousalWidget extends StatefulWidget {
  final CarouselController? carouselController;
  final Function(int, CarouselPageChangedReason)? onPageChanged;
  final List<Widget>? items;
  final int? index;
  final int? length;
  final double? height;
  final bool? needAutoPlayScroll;
  final double? viewportFraction;

  const CarousalWidget({
    super.key,
    this.carouselController,
    this.onPageChanged,
    this.items,
    this.index,
    this.height,
    this.viewportFraction,
    this.needAutoPlayScroll = false,
    this.length = 1,
  });

  @override
  State<CarousalWidget> createState() => _CarousalWidgetState();
}

class _CarousalWidgetState extends State<CarousalWidget> {
  int _getIndex = 0;

  int get getIndex => _getIndex;

  set getIndex(int value) {
    setState(() {
      _getIndex = value;
    });
  }

  void updateIndex() {
    setState(() {
      getIndex = widget.index ?? 0;
    });
  }

  @override
  void initState() {
    updateIndex();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            carouselController: widget.carouselController,
            options: CarouselOptions(
                scrollPhysics: widget.length! > 1
                    ? const BouncingScrollPhysics()
                    : const NeverScrollableScrollPhysics(),
                height: widget.height ?? 400,
                viewportFraction: widget.viewportFraction ?? 1,
                enlargeCenterPage: true,
                autoPlay: widget.needAutoPlayScroll ?? false,
                onPageChanged: widget.onPageChanged),
            items: widget.items),
        Row(
          children: [
            const Spacer(),
            Container(
              alignment: Alignment.center,
              height: 15,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          border: Border.all(color: MyColors.primaryColor),
                          shape: BoxShape.circle,
                          color: getIndex == index
                              ? MyColors.primaryColor
                              : Colors.transparent),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Padding(padding: EdgeInsets.only(left: 4));
                  },
                  itemCount: widget.items!.length),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}
