import 'package:flutter/material.dart';
import 'package:sala7ly_app/view/screens/auth/forget_password.dart';
import 'package:sala7ly_app/view/screens/auth/login_page.dart';
import 'package:sala7ly_app/view/screens/auth/register_page.dart';
import '../../view/screens/last_page/last_page.dart';
import '../../view/screens/main_page_layout/electricity_issue_page.dart';
import '../../view/screens/main_page_layout/electricity_page.dart';
import '../../view/screens/main_page_layout/main_page.dart';

//routes names class
class AppRoutes {
  //splash
  //static const String startScreenRoute = "/";
  //auth
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String mainPageRoute = "/mainPage";
  static const String electricityRoute = "/electricity";
  static const String electricityIssueRoute = "/electricityIssue";
  static const String lastPageRoute = "/lastPage";

}

// routes map
Map<String, Widget Function(BuildContext)> routes = {
  // splash
  //AppRoutes.startScreenRoute: (context) => const StartPage(),
  AppRoutes.loginRoute: (context) =>  LoginScreen(),
  AppRoutes.registerRoute: (context) =>  RegisterScreen(),
  AppRoutes.forgetPasswordRoute: (context) =>  ForgetPasswordScreen(),
  AppRoutes.mainPageRoute: (context) =>  MainPage(),
  AppRoutes.electricityRoute: (context) =>  ElectricityScreen(),
  AppRoutes.electricityIssueRoute: (context) =>  ElectricityIssueScreen(),
  AppRoutes.lastPageRoute: (context) =>  LastPage(),
};
