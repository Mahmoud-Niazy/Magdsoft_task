import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/shared/help/widgets/help_screen_body.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

class HelpScreen extends StatelessWidget{
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.mainColor,
      child: const SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: HelpScreenBody(),
        ),
      ),
    );
  }
}