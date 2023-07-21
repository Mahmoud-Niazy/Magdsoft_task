import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

class BuildButton extends StatelessWidget {
  final void Function()? onPressed;
  final double height;
  final double width;
  final String label;
  final double? border ;

    const BuildButton({Key? key,
    required this.onPressed,
    this.height = 50,
    this.width = double.infinity,
    required this.label,
     this.border = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,

      decoration: BoxDecoration(
        gradient: AppColor.mixWhiteAndBlueColorsForButtons,
        borderRadius: BorderRadius.circular(border!.r),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            color:  AppColor.white,
          ),
        ),
      ),
    );
  }
}