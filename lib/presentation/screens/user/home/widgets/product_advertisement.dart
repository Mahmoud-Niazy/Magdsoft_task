import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app_asset/app_asset.dart';
import '../../../../styles/app_text_style.dart';

class ProductAdvertisement extends StatelessWidget{
  const ProductAdvertisement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          width: double.infinity,
          height: 150.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AppAsset.largeImageInHome,
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(
            10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New Release',
                style: AppTextStyle.label12,
              ),
              Text(
                'Acer Predator Helios 300',
                style: AppTextStyle.label12,
              ),
            ],
          ),
        ),
      ],
    );
  }
}