import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/shared/login/widgets/container_for_login_in_login_screen.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/shared/login/widgets/white_container_with_border_at_top_in_login_screen.dart';
import 'image_inside_blue_container_in_login_screen.dart';

class LoginScreenBody extends StatelessWidget {
  LoginScreenBody({Key? key}) : super(key: key);
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Stack(
          children: [
            ImageInsideBlueContainerInLoginScreen(),
            WhiteContainerWithBorderAtTopInLoginScreen(),
          ],
        ),
        ContainerForLoginInLoginScreen(
          phoneController: phoneController,
          formKey: formKey,
          nameController: nameController,
        ),
      ],
    );
  }
}
