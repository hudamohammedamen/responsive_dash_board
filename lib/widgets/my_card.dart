import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import '../utils/app_images.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
              image: AssetImage(R.assetsImagesCardBackgroundSvg)),
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(right: 24, left: 24, top: 12),
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: Text('Syah Bandi', style: AppStyles.styleMedium20),
              trailing: SvgPicture.asset(R.assetsImagesGallerySvg),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style:
                        AppStyles.styleSemiBold20.copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/20 -124',
                    style: AppStyles.styleRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 26,
            )
          ],
        ),
      ),
    );
  }
}
