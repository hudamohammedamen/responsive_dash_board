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
      children:
          // items.map((e) => AllExpensessItem(itemModel: e)).toList()
          items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
              child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensessItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          ));
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: AllExpensessItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          );
        }
      }).toList(),
    );

    return SizedBox(
      height: 500,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return AllExpensessItem(
            itemModel: items[index],
            isSelected: false,
          );
        },
      ),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
