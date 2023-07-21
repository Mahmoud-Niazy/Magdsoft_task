import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

class CategoryItem extends StatelessWidget {
  final String image;

  final String category;

  final Color? color;

  const CategoryItem({
    Key? key,
    required this.image,
    required this.category,
    this.color = AppColor.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
      ),
      width: 100.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey,
        //     offset: Offset(0,1), //(x,y)
        //     blurRadius: 1.0,
        //   ),
        // ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Material(
            elevation: 8,
            borderRadius: BorderRadius.circular(20),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: AppColor.white,
              backgroundImage: AssetImage(
                image,
              ),
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Expanded(child: Text(category)),
        ],
      ),
    );
  }
}
