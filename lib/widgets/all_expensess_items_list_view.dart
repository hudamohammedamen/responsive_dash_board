import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item.dart';

import '../utils/app_images.dart';

class AllExpensessItemsListView extends StatefulWidget {
  const AllExpensessItemsListView({super.key});

  @override
  State<AllExpensessItemsListView> createState() =>
      _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
  final items = [
    const AllExpensessItemModel(
      image: R.assetsImagesBalanceSvg,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensessItemModel(
      image: R.assetsImagesIncomeSvg,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensessItemModel(
      image: R.assetsImagesExpensesSvg,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
          onTap: () {
            updateIndex(0);
          },
          child: AllExpensessItem(
            itemModel: items[0],
            isSelected: selectedIndex == 0,
          ),
        )),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: GestureDetector(
          onTap: () {
            updateIndex(1);
          },
          child: AllExpensessItem(
            itemModel: items[1],
            isSelected: selectedIndex == 1,
          ),
        )),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: GestureDetector(
          onTap: () {
            updateIndex(2);
          },
          child: AllExpensessItem(
            itemModel: items[2],
            isSelected: selectedIndex == 2,
          ),
        )),
      ],
    );

  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
