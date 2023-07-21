import 'package:flutter/material.dart';
import '../../../../app_asset/app_asset.dart';
import '../../../../styles/colors.dart';

class ImageInsideBlueContainerInLoginScreen extends StatelessWidget{
  const ImageInsideBlueContainerInLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * .6,
      top: 0,
      right: 0,
      left: 0,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AppAsset.loginImage,
                ),
              ),
            ),
          ),
          Container(
            color: AppColor.mainColor.withOpacity(.6),
          ),
        ],
      ),
    );
  }
}