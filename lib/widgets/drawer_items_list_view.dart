import 'package:flutter/material.dart';
import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: R.assetsImagesDashboardSvg),
    DrawerItemModel(
        title: 'My Transaction', image: R.assetsImagesMyTransactionSvg),
    DrawerItemModel(title: 'Statistics', image: R.assetsImagesStatisticsSvg),
    DrawerItemModel(
        title: 'Wallet Account', image: R.assetsImagesWalletAccountSvg),
    DrawerItemModel(
        title: 'My Investments', image: R.assetsImagesMyInvestmentsSvg),
  ];


  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index ,
            ),
          ),
        );
      },
    );
  }
}
