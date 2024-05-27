import 'package:flutter/material.dart';
import 'package:sala7ly_app/view/screens/auth/forget_password.dart';
import 'package:sala7ly_app/view/screens/auth/login_page.dart';
import 'package:sala7ly_app/view/screens/auth/register_page.dart';
import '../../view/screens/last_page/last_page.dart';
import '../../view/screens/main_page_layout/carpentry_issue_page.dart';
import '../../view/screens/main_page_layout/carpentry_page.dart';
import '../../view/screens/main_page_layout/electrical_appliances_issue_page.dart';
import '../../view/screens/main_page_layout/electrical_appliances_page.dart';
import '../../view/screens/main_page_layout/electricity_issue_page.dart';
import '../../view/screens/main_page_layout/electricity_page.dart';
import '../../view/screens/main_page_layout/main_page.dart';
import '../../view/screens/main_page_layout/mechanics_issue_page.dart';
import '../../view/screens/main_page_layout/mechanics_page.dart';
import '../../view/screens/main_page_layout/painting_issue_page.dart';
import '../../view/screens/main_page_layout/painting_page.dart';
import '../../view/screens/main_page_layout/plumbing_issue_page.dart';
import '../../view/screens/main_page_layout/plumbing_page.dart';
import '../../view/screens/start_page/start_page.dart';

//routes names class
class AppRoutes {
  //start
  static const String startScreenRoute = "/";
  //auth
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String mainPageRoute = "/mainPage";
  static const String electricityRoute = "/electricity";
  static const String carpentryRoute = "/carpentry";
  static const String paintingRoute = "/painting";
  static const String electricalAppliancesRoute = "/electricalAppliances";
  static const String plumbingRoute = "/plumping";
  static const String mechanicsRoute = "/mechanics";
  static const String electricityIssueRoute = "/electricityIssue";
  static const String carpentryIssueRoute = "/carpentryIssue";
  static const String paintingIssueRoute = "/paintingIssue";
  static const String electricalApplianceIssueRoute = "/electricalApplianceIssue";
  static const String plumbingIssueRoute = "/plumbingIssue";
  static const String mechanicsIssueRoute = "/mechanicsIssue";
  static const String lastPageRoute = "/lastPage";

}

// routes map
Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.startScreenRoute: (context) => const StartPage(),
  AppRoutes.loginRoute: (context) =>  LoginScreen(),
  AppRoutes.registerRoute: (context) =>  RegisterScreen(),
  AppRoutes.forgetPasswordRoute: (context) =>  ForgetPasswordScreen(),
  AppRoutes.mainPageRoute: (context) =>  MainPage(),
  AppRoutes.electricityRoute: (context) =>  ElectricityScreen(),
  AppRoutes.carpentryRoute: (context) =>  CarpentryScreen(),
  AppRoutes.paintingRoute: (context) =>  PaintingScreen(),
  AppRoutes.electricalAppliancesRoute: (context) =>  ElectricalAppliancesScreen(),
  AppRoutes.plumbingRoute: (context) =>  PlumbingScreen(),
  AppRoutes.mechanicsRoute: (context) =>  MechanicsScreen(),
  AppRoutes.electricityIssueRoute: (context) =>  ElectricityIssueScreen(),
  AppRoutes.carpentryIssueRoute: (context) =>  CarpentryIssueScreen(),
  AppRoutes.paintingIssueRoute: (context) =>  PaintingIssueScreen(),
  AppRoutes.electricalApplianceIssueRoute: (context) =>  ElectricalAppliancesIssueScreen(),
  AppRoutes.plumbingIssueRoute: (context) =>  PlumbingIssueScreen(),
  AppRoutes.mechanicsIssueRoute: (context) =>  MechanicsIssueScreen(),
  AppRoutes.lastPageRoute: (context) =>  LastPage(),
};
