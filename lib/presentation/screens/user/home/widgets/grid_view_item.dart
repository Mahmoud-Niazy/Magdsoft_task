import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magdsoft_flutter_structure/functions/navigation.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/shadow.dart';

import '../../../../../data/models/product_data_model.dart';
import '../../../../styles/app_text_style.dart';
import '../../../../styles/colors.dart';
import '../../../../widget/custom_icon_button.dart';
import '../../product_details_screen/product_details_screen.dart';
import 'CustomImageForProduct.dart';

class GridViewItem extends StatelessWidget {
  final ProductDataModel product;

  const GridViewItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        InkWell(
          onTap: () {
            navigate(
                context: context,
                page: ProductDetailsScreen(),
                route: '/productDetails',
              argument: {
                  'product' : product,
              },
            );
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                 boxShadow,
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageForProduct(
                      image: product.image!,
                    ),
                    CustomIconButton(
                      onPressed: () {},
                      icon: Icons.favorite,
                      color: Colors.red,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 5.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.company!,
                        style: AppTextStyle.label20,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        product.name!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.label12,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        '${product.price} EGP',
                        style: AppTextStyle.label12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            gradient: LinearGradient(
              colors: <Color>[
                AppColor.mainColor.withOpacity(.5),
                AppColor.mainColor
              ],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            ),
          ),
          child: CustomIconButton(
              onPressed: () {}, icon: Icons.add, color: Colors.white),
        ),
      ],
    );
  }
}
