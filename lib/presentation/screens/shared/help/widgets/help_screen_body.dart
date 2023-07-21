import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magdsoft_flutter_structure/business_logic/global_cubit/global_cubit.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/home/home_screen.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/app_text_style.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/circular_progress_indicator.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/custom_expansion_tile.dart';

import '../../../../../functions/navigation.dart';
import '../../../../styles/colors.dart';
import '../../../../widget/custom_button.dart';

class HelpScreenBody extends StatelessWidget {
  const HelpScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GlobalCubit, GlobalState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = GlobalCubit.get(context);
        if (state is GetHelpLoadingState) {
          return const CustomCircularProgressIndicator();
        } else {
          return Container(
            decoration: BoxDecoration(
              gradient: AppColor.mixWhiteAndBlueColorsForScreens,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Help',
                    style: AppTextStyle.label30.copyWith(
                      color: AppColor.white,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => CustomExpansionTile(
                        title: cubit.help[index].question!,
                        body: cubit.help[index].answer!,
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 20.h,
                      ),
                      itemCount: cubit.help.length,
                    ),
                  ),
                  BuildButton(
                    label: 'Continue',
                    onPressed: () {
                      navigateAndFinish(
                        context: context,
                        page: const HomeScreen(),
                        route: '/home',
                      );
                    },
                    width: MediaQuery.of(context).size.width * .7,
                    height: 40.h,
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
