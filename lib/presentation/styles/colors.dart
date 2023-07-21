import 'package:flutter/material.dart';

class AppColor{
  static const Color white = Color(0xFFFFFFFF);
  static const mainColor = Colors.blue;
  static const Color black = Colors.black;
  static const Color lightBlack = Colors.black45;
  static const Color grey = Colors.grey;

  static LinearGradient mixWhiteAndBlueColorsForButtons = LinearGradient(
  colors: <Color>[AppColor.mainColor.withOpacity(.5), AppColor.mainColor],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
  );

  static LinearGradient mixWhiteAndBlueColorsForScreens = LinearGradient(
    colors: <Color>[
      AppColor.mainColor.withOpacity(.9),
      AppColor.white,
    ],
    begin: Alignment.topCenter,
    end: Alignment.center,
  );

}