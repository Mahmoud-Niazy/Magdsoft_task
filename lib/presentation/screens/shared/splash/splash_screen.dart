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
  Timer? timer ;
  @override
  void initState() {
    super.initState();
    // timer = Timer.periodic(Duration(seconds: 3,), (timer) {
    //   navigateAndFinish(
    //       context: context, page: LoginScreen(), route: '/login');
    // });
    Future.delayed(
      const Duration(seconds: 3),
      () {
        navigateAndFinish(
            context: context, page: LoginScreen(), route: '/login');
      },
    );
  }
  // @override
  // void dispose() {
  //   super.dispose();
  //   timer!.cancel();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: Center(
        child: Image(
          height: 150,
          image: AssetImage(
            AppAsset.splashImage,
          ),
        ),
      ),
    );
  }
}
