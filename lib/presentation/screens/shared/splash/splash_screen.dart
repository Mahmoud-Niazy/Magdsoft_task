import 'dart:async';
import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/functions/navigation.dart';
import 'package:magdsoft_flutter_structure/presentation/app_asset/app_asset.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/shared/login/login_screen.dart';

import '../../../styles/colors.dart';

class SplashScreen extends StatefulWidget {
   const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
          () {
        navigateAndFinish(
            context: context, page: const LoginScreen(), route: '/login');
      },
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage(
              AppAsset.splashBackground,
            ),
          ),
        ),
        child: const Image(
          height: 150,
          image: AssetImage(
            AppAsset.splashImage,
          ),
        ),
      ),
    );
  }
}
