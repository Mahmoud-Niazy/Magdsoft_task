import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magdsoft_flutter_structure/business_logic/global_cubit/global_cubit.dart';
import 'package:magdsoft_flutter_structure/presentation/app_asset/app_asset.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/home/widgets/CustomContainerwithIcon.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/home/widgets/grid_view_item.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/home/widgets/list_of_categories.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/home/widgets/product_advertisement.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/app_text_style.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/circular_progress_indicator.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/custom_text_form_field.dart';
import '../../../../../app_words/app_words.dart';
import '../../../../styles/colors.dart';

class HomeScreenBody extends StatelessWidget {
  final searchController = TextEditingController();

  HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(gradient: AppColor.mixWhiteAndBlueColorsForScreens),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 30.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: BuildTextFormField(
                          label: AppWords.search,
                          controller: searchController,
                          radius: 10,
                          suffixIcon: Icons.search,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Expanded(
                        flex: 1,
                        child: CustomContainerWithIcon(
                          child: Image(
                            image: AssetImage(
                              AppAsset.iconInHomeBesidFormField,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const ProductAdvertisement(),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    height: 40.h,
                    child: ListOfCategories(),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    AppWords.recomendedForYou,
                    style: AppTextStyle.label20.copyWith(color: Colors.black),
                  ),
                ],
              ),
            ),
            BlocConsumer<GlobalCubit, GlobalState>(
              listener: (context, state) {},
              builder: (context, state) {
                final screenWidth = MediaQuery.of(context).size.width;
                var cubit = GlobalCubit.get(context);
                if (state is GetAllProductsLoadingState) {
                  return const CustomCircularProgressIndicator();
                } else {
                  return GridView.builder(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 30,
                      childAspectRatio: (screenWidth - 30 - 15) / (2 * 330),
                      // 1 / 1.8,
                    ),
                    itemBuilder: (context, index) {
                      if (index % 2 == 0) {
                        return OverflowBox(
                          maxHeight: 340,
                          child: GridViewItem(
                            product: cubit.allProducts[index],
                            margin: 40,
                          ),
                        );
                      } else {
                        return GridViewItem(
                          product: cubit.allProducts[index],
                        );
                      }
                    },
                    itemCount: cubit.allProducts.length,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
