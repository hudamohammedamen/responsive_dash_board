import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';

import '../utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 12,
      visualDensity: VisualDensity.compact,
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: itemDetailsModel.color,
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16.copyWith(
          color: const Color(0xFF4EB7F2),
        ),
      ),
    );
  }
}
