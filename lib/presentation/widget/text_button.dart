import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/app_text_style.dart';

import '../styles/colors.dart';

class BuildTextButton extends StatelessWidget {
  final String label;
  final Color? color;

  final void Function()? onPressed;

  const BuildTextButton({
    required this.label,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: AppTextStyle.label18.copyWith(
          color: color ?? AppColor.mainColor,
        ),
      ),
    );
  }
}
