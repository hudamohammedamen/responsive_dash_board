import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({
    super.key,
    required this.pageController,
    this.onPageChanged,
  });

  final PageController pageController;
  final ValueChanged<int>? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
            PointerDeviceKind.trackpad,
          },
        ),
        child: PageView.builder(
          controller: pageController,
          itemCount: 3,
          onPageChanged: onPageChanged,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const MyCard(),
        ),
      ),
    );
  }
}

