import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/app_text_style.dart';

class BuildTextFormField extends StatelessWidget {
  final String label;
  final TextInputType? type;
  final String? Function(String?)? validation;
  final TextEditingController controller;
  final double radius ;
  final IconData? suffixIcon;

  const BuildTextFormField({Key? key,
    required this.label,
    this.validation,
    this.type,
    required this.controller,
    this.radius = 20,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(radius),
      child: Container(
        height: 45.h,
        padding: EdgeInsets.only(
          left: 10.w,
        ),
        child: TextFormField(
            validator: validation,
            keyboardType: type,
            controller: controller,
          decoration: InputDecoration(
            suffixIcon: Icon(
              suffixIcon,
            ),
            border: InputBorder.none,
            label: Padding(
              padding: EdgeInsets.only(
                left: 10.w,
              ),
              child: Text(
                label,
                style: AppTextStyle.textFormFieldTextStle,
              ),
            ),
          )
        ),
      ),
    );
  }
}

