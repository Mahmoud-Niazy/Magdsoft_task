import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magdsoft_flutter_structure/data/models/product_data_model.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/home/widgets/CustomImageForProduct.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/app_text_style.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/custom_button.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/text_button.dart';
import '../../../../../functions/navigation.dart';
import '../../../../app_asset/app_asset.dart';
import '../../../../styles/colors.dart';
import '../../../../styles/shadow.dart';
import '../../../../widget/custom_icon_button.dart';
import '../../home/widgets/CustomContainerwithIcon.dart';

class ProductDetailsScreenBody extends StatelessWidget {
  final ProductDataModel product;

  const ProductDetailsScreenBody({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: AppColor.mixWhiteAndBlueColorsForScreens,
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20.h,
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainerWithIcon(
                child: CustomIconButton(
                  onPressed: () {
                    navigatePop(context: context);
                  },
                  icon: Icons.arrow_back_ios_new_outlined,
                  color: AppColor.grey,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                product.name!,
                style: AppTextStyle.label30
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                product.type!,
                style: AppTextStyle.label18,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomImageForProduct(
                padding: 30,
                image: product.image!,
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 120.h,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 10.h,
                  ),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomImageForProduct(
                    image: product.image!,
                    // imageHeight: 80.h,
                    imageWidth: 110.w,
                    padding: 5,
                  ),
                  separatorBuilder: (context, index) => SizedBox(width: 15.w),
                  itemCount: 4,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15.h,
                  horizontal: 10.w,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    boxShadow,
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 2.h,
                      ),
                      child: Image.asset(AppAsset.acerLogo),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.white,
                        boxShadow: [
                          boxShadow,
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Acer Official Store',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.label20
                                .copyWith(color: Colors.black),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            'View Store',
                            style: AppTextStyle.label15,
                          ),
                        ],
                      ),
                    ),
                    CustomContainerWithIcon(
                        height: 30.h,
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: AppColor.mainColor,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: AppTextStyle.label15,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          '${product.price} EGP',
                          style: AppTextStyle.label18
                              .copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: BuildButton(
                      onPressed: () {},
                      label: 'Add To Cart',
                      border: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Container(
                  height: 1,
                  color: AppColor.grey,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BuildTextButton(
                    label: 'OverView',
                    onPressed: () {},
                    color: Colors.black,
                  ),
                  BuildTextButton(
                    label: 'Specification',
                    onPressed: () {},
                    color: Colors.grey,
                  ),
                  BuildTextButton(
                    label: 'Review',
                    onPressed: () {},
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                product.description!,
                style: AppTextStyle.label15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
