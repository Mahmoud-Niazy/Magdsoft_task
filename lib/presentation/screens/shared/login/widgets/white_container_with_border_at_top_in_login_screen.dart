import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magdsoft_flutter_structure/presentation/app_asset/app_asset.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/shared/login/widgets/social_media_item.dart';

import '../../../../styles/colors.dart';

class WhiteContainerWithBorderAtTopInLoginScreen extends StatelessWidget {
  const WhiteContainerWithBorderAtTopInLoginScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .3,
      right: 0,
      left: 0,
      bottom: 0,
      child: Stack(
        children: [
          Container(
            // padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70),
                topRight: Radius.circular(70),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .1,
            right: MediaQuery.of(context).size.width * .1,
            left: MediaQuery.of(context).size.width * .1,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 50.h,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: AppColor.mainColor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.w,
                        ),
                        child: const Text(
                          'OR',
                          style: TextStyle(
                            color: AppColor.mainColor,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: AppColor.mainColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SocialMediaItem(
                      image: AppAsset.facebookImage,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    const SocialMediaItem(
                      image: AppAsset.iosCategory,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    const SocialMediaItem(
                      image: AppAsset.googleImage,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
