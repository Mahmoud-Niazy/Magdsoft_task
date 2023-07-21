import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

import 'widgets/otp_screen_body.dart';

class OtpScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final recievedData = ModalRoute.of(context)!.settings.arguments as Map;
    return Container(
      color: AppColor.mainColor,
      child: SafeArea(
        child: Scaffold(
            // backgroundColor: AppColor.splashColor.withOpacity(.5),
          resizeToAvoidBottomInset: false,
          body: OtpScreenBody(recievedData['phone']),
        ),
      ),
    );
  }
}