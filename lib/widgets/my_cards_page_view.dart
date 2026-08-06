import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: List.generate(
          3,
          (index) => const MyCard(),
        ),
      ),
    );
  }
}
