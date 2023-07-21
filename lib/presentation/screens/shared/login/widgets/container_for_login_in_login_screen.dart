import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magdsoft_flutter_structure/app_words/app_words.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/shadow.dart';
import '../../../../../business_logic/global_cubit/global_cubit.dart';
import '../../../../../functions/navigation.dart';
import '../../../../styles/app_text_style.dart';
import '../../../../styles/colors.dart';
import '../../../../widget/circular_progress_indicator.dart';
import '../../../../widget/custom_button.dart';
import '../../../../widget/custom_text_form_field.dart';
import '../../../../widget/toast.dart';
import '../../otp/otp_screen.dart';

class ContainerForLoginInLoginScreen extends StatelessWidget{
  final TextEditingController phoneController ;
  final TextEditingController nameController;
  final GlobalKey<FormState> formKey;

  const ContainerForLoginInLoginScreen({Key? key,
    required this.phoneController,
    required this.formKey,
    required this.nameController,
}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .2,
      bottom: MediaQuery.of(context).size.height * .36,
      left: MediaQuery.of(context).size.width * .1,
      right: MediaQuery.of(context).size.width * .1,
      child: SizedBox(
        width: 372.w,
        height: 345.h,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: AppColor.white,
            boxShadow:  [
             boxShadow,
            ],
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text(
                    AppWords.welcome,
                    style: AppTextStyle.label30.copyWith(
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.w),
                    child: Container(
                      height: 3,
                      color: AppColor.mainColor,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  BuildTextFormField(
                    radius: 15,
                    label: AppWords.enterName,
                    controller: nameController,
                    validation: (value) {
                      if (value!.isEmpty) {
                        return AppWords.youMustEnterName;
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  BuildTextFormField(
                    type: TextInputType.phone,
                    radius: 15,
                    label: AppWords.enterPhone,
                    controller: phoneController,
                    validation: (value) {
                      if (value!.isEmpty) {
                        return AppWords.youMustEnterPhone;
                      }
                      if (value.length != 11) {
                        return AppWords.phoneNumbermustbe11;
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  BlocConsumer<GlobalCubit, GlobalState>(
                    listener: (context, state) async {
                      if (state is VerifyPhoneSyccessfullyState) {
                        showToast(text: state.response!['message']);
                        if (state.response!["status"] == 200) {
                          navigateAndFinish(
                              context: context,
                              page: OtpScreen(),
                              route: '/otp',
                              argument: {
                                'phone' : phoneController.text,
                              }
                          );
                        }
                      }
                      if (state is VerifyPhoneErrorState) {
                        showToast(text: state.error!);
                      }
                    },
                    builder: (context, state) {
                      if (state is VerifyPhoneLoadingState) {
                        return const CustomCircularProgressIndicator();
                      } else {
                        return BuildButton(
                          height: 48,
                          border: 50,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              GlobalCubit.get(context).userLogin(
                                data: {
                                  'phone': phoneController.text,
                                  'name': nameController.text,
                                },
                              );
                            }
                          },
                          label: AppWords.login,
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}