import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/shadow.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../styles/colors.dart';

class PinCode extends StatelessWidget{

  final TextEditingController codeController ;

  const PinCode({Key? key,
    required this.codeController,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      keyboardType: TextInputType.phone,
      appContext: context,
      length: 4,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        inActiveBoxShadow: [
          boxShadow,
        ],
        inactiveFillColor: AppColor.white,
        inactiveColor: AppColor.white,
        shape: PinCodeFieldShape.box,
        activeColor: AppColor.mainColor,
        borderRadius: BorderRadius.circular(20),
        fieldHeight: 75,
        fieldWidth: 60,
        activeFillColor: Colors.white,
      ),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      controller: codeController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Code can\'t be empty ';
        }
        return null;
      },
    );
  }
}