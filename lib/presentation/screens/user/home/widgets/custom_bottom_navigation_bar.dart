import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../../../styles/colors.dart';

class CustomBottomNavigationBar extends StatelessWidget{
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      rightCornerRadius: 20,
      inactiveColor: AppColor.grey,
      activeColor: AppColor.grey,
      icons: const [
        Icons.output,
        Icons.favorite,
        Icons.notification_add,
        Icons.settings,
      ],
      activeIndex: 2,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.defaultEdge,
      onTap: (index){},
      //other params
    );
  }
}