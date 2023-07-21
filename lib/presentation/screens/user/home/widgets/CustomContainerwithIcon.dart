import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../styles/colors.dart';

class CustomContainerWithIcon extends StatelessWidget{
  final Widget child ;
  final double? width;
  final double? height ;
   const CustomContainerWithIcon({Key? key,
    required this.child,
    this.width = 45,
    this.height = 45,
}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height!.h,
      width: width!.w,
      decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 4,
              offset: Offset(0,0),
            ),
          ],
          borderRadius: BorderRadius.circular(15)),
      child: child
    );
  }
}