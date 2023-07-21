import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/shared/help/help_screen.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/shared/splash/splash_screen.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/home/home_screen.dart';

import '../../data/data_providers/local/cache_helper.dart';
import '../screens/shared/login/login_screen.dart';
import '../screens/shared/otp/otp_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) =>  CacheHelper.getDataFromSharedPreference(key: 'isLogin') == true? HomeScreen(): SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/otp':
        return MaterialPageRoute(builder: (_) => OtpScreen());
      case '/help':
        return MaterialPageRoute(builder: (_) => HelpScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => HelpScreen());
      case '/productDetails':
        return MaterialPageRoute(builder: (_) => HelpScreen());
      default:
        return null;
    }
  }
}