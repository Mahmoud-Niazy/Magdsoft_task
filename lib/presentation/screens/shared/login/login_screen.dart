import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/shared/login/widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LoginScreenBody(),
    );
  }
}
