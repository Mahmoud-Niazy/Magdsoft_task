import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../styles/app_text_style.dart';
import '../styles/colors.dart';
import '../styles/shadow.dart';

class CustomExpansionTile extends StatelessWidget{
  final String title;
  final String body;
  const CustomExpansionTile({Key? key, required this.body, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          boxShadow,
        ],
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.symmetric(
          vertical: 15.h,
          horizontal: 20.w,
        ),
        backgroundColor: AppColor.white,
        title: Text(
          title,
          style: AppTextStyle.label20,
        ),
        children: [
          Text(
            body,
          ),
        ],
      ),
    );
  }
}