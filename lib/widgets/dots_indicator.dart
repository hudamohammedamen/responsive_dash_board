import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.currentPageIndex,
    this.onDotTap,
  });

  final int currentPageIndex;
  final ValueChanged<int>? onDotTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => GestureDetector(
          onTap: () => onDotTap?.call(index),
          child: Padding(
            padding: const EdgeInsets.only(right: 6),
            child: CustomDotIndicator(
              isActive: index == currentPageIndex,
            ),
          ),
        ),
      ),
    );
  }
}

