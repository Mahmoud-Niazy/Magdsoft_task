import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magdsoft_flutter_structure/data/models/category_data_model.dart';
import 'package:magdsoft_flutter_structure/presentation/app_asset/app_asset.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/home/widgets/category_item.dart';

class ListOfCategories extends StatelessWidget {
  final List<CategoryDataModel>categories = [
    CategoryDataModel(title: 'All', image: AppAsset.allCategories),
    CategoryDataModel(title: 'Acer', image: AppAsset.acerCategory),
    CategoryDataModel(title: 'Razer', image: AppAsset.razerCategory),
    CategoryDataModel(title: 'IOS', image: AppAsset.iosCategory),
  ];

  ListOfCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) =>
          CategoryItem(
            image: categories[index].image!,
            category: categories[index].title!,
          ),
      separatorBuilder: (context,index)=> SizedBox(
        width: 30.w,
      ),
      itemCount: categories.length,
    );

  }
}