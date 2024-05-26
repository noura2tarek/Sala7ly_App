import 'package:flutter/material.dart';
import 'package:sala7ly_app/view/screens/auth/forget_password.dart';
import 'package:sala7ly_app/view/screens/auth/login_page.dart';
import 'package:sala7ly_app/view/screens/auth/register_page.dart';
import 'package:sala7ly_app/view/screens/main_page/main_page.dart';

import '../../view/screens/start_page/start_page.dart';

//routes names class
class AppRoutes {
  //splash
  //static const String startScreenRoute = "/";
  //auth
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String mainPageRoute = "/mainPage";

}

// routes map
Map<String, Widget Function(BuildContext)> routes = {
  // splash
  //AppRoutes.startScreenRoute: (context) => const StartPage(),
  AppRoutes.loginRoute: (context) =>  LoginScreen(),
  AppRoutes.registerRoute: (context) =>  RegisterScreen(),
  AppRoutes.forgetPasswordRoute: (context) =>  ForgetPasswordScreen(),
  AppRoutes.mainPageRoute: (context) =>  MainPage(),
};
