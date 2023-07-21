import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magdsoft_flutter_structure/business_logic/global_cubit/global_cubit.dart';
import 'package:magdsoft_flutter_structure/data/data_providers/local/cache_helper.dart';
import 'package:magdsoft_flutter_structure/functions/navigation.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/shared/help/help_screen.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/shared/otp/widgets/pin_code.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/app_text_style.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/circular_progress_indicator.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/custom_button.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/text_button.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/toast.dart';

class OtpScreenBody extends StatelessWidget {
  final codeController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final String phone;

  OtpScreenBody(this.phone, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColor.mixWhiteAndBlueColorsForScreens,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 50.h,
          horizontal: 30.w,
        ),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Verify Phone',
                  style: AppTextStyle.label30.copyWith(
                    color: AppColor.white,
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                PinCode(codeController: codeController),
                SizedBox(
                  height: 60.h,
                ),
                BuildTextButton(label: 'Resend Code', onPressed: (){}),
                SizedBox(
                  height: 100.h,
                ),
                BlocConsumer<GlobalCubit,GlobalState>(
                  listener: (context,state){
                    if(state is CheckCodeSuccessfullyState){
                      showToast(text: state.response!['message']);
                      if(state.response!['status'] == 200){
                        CacheHelper.saveDataSharedPreference(key: 'isLogin', value: true);
                        navigateAndFinish(context: context, page: const HelpScreen(), route: '/help');
                      }
                    }
                    if(state is CheckCodeErrorState){
                      showToast(text: state.error!);
                    }
                  },
                  builder: (context,state){
                    if(state is CheckCodeLoadingState){
                      return const CustomCircularProgressIndicator();
                    }
                    else{
                      return BuildButton(
                        onPressed: () {
                          if(formKey.currentState!.validate()){
                            GlobalCubit.get(context).checkCode(data: {
                              'code' : codeController.text,
                              'phone' : phone,
                            });
                          }
                        },
                        label: 'Verify',
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
