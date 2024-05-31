import 'package:flutter/material.dart';
import 'package:sala7ly_app/view/screens/auth/forget_password.dart';
import 'package:sala7ly_app/view/screens/auth/login_page.dart';
import 'package:sala7ly_app/view/screens/auth/register_page.dart';
import '../../view/screens/craftman_page/carpentry_craftman_page.dart';
import '../../view/screens/craftman_page/electricalApplianceCraftman_page.dart';
import '../../view/screens/craftman_page/electricity_craftman_page.dart';
import '../../view/screens/craftman_page/painter_crafman_page.dart';
import '../../view/screens/craftman_page/plumber_craftman_page.dart';
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
import '../../view/screens/order/carpentry_order_details_page.dart';
import '../../view/screens/order/electrical_appliance_order_details_page.dart';
import '../../view/screens/order/electricity_order_details_page.dart';
import '../../view/screens/order/mechanics_order_details_page.dart';
import '../../view/screens/order/painting_order_details_page.dart';
import '../../view/screens/order/plumbing_order_details_page.dart';
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
  static const String electricalApplianceIssueRoute =
      "/electricalApplianceIssue";
  static const String plumbingIssueRoute = "/plumbingIssue";
  static const String mechanicsIssueRoute = "/mechanicsIssue";
  static const String electricalOrderDetailsRoute = "/electricalOrderDetails";
  static const String carpentryOrderDetailsRoute = "/carpentryOrderDetails";
  static const String paintingOrderDetailsRoute = "/paintingOrderDetails";
  static const String plumbingOrderDetailsRoute = "/plumbingOrderDetails";
  static const String electricalAppliancesOrderDetailsRoute =
      "/electricalAppliancesOrderDetails";
  static const String mechanicsOrderDetailsRoute = "/mechanicsOrderDetails";
  static const String electricityCraftmanRoute = "/electricityCraftman";
  static const String electricalApplianceCraftmanRoute = "/electricalApplianceCraftman";
  static const String carpentryCraftmanRoute = "/carpentryCraftman";
  static const String painterCraftmanRoute = "/painterCraftman";
  static const String plumberCraftmanRoute = "/plumberCraftman";
  static const String mechanicalCraftmanRoute = "/mechanicalCraftman";
  static const String lastPageRoute = "/lastPage";
}

// routes map
Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.startScreenRoute: (context) => const StartPage(),
  AppRoutes.loginRoute: (context) => LoginScreen(),
  AppRoutes.registerRoute: (context) => RegisterScreen(),
  AppRoutes.forgetPasswordRoute: (context) => ForgetPasswordScreen(),
  AppRoutes.mainPageRoute: (context) => MainPage(),
  AppRoutes.electricityRoute: (context) => ElectricityScreen(),
  AppRoutes.carpentryRoute: (context) => CarpentryScreen(),
  AppRoutes.paintingRoute: (context) => PaintingScreen(),
  AppRoutes.electricalAppliancesRoute: (context) =>
      ElectricalAppliancesScreen(),
  AppRoutes.plumbingRoute: (context) => PlumbingScreen(),
  AppRoutes.mechanicsRoute: (context) => MechanicsScreen(),
  AppRoutes.electricityIssueRoute: (context) => ElectricityIssueScreen(),
  AppRoutes.carpentryIssueRoute: (context) => CarpentryIssueScreen(),
  AppRoutes.paintingIssueRoute: (context) => PaintingIssueScreen(),
  AppRoutes.electricalApplianceIssueRoute: (context) =>
      ElectricalAppliancesIssueScreen(),
  AppRoutes.plumbingIssueRoute: (context) => PlumbingIssueScreen(),
  AppRoutes.mechanicsIssueRoute: (context) => MechanicsIssueScreen(),
  AppRoutes.electricalOrderDetailsRoute: (context) =>
      ElectricityOrderDetailsScreen(),
  AppRoutes.carpentryOrderDetailsRoute: (context) =>
      CarpentryOrderDetailsScreen(),
  AppRoutes.paintingOrderDetailsRoute: (context) =>
      PaintingOrderDetailsScreen(),
  AppRoutes.plumbingOrderDetailsRoute: (context) =>
      PlumbingOrderDetailsScreen(),
  AppRoutes.electricalAppliancesOrderDetailsRoute: (context) =>
      ElectricalAppliancesOrderScreen(),
  AppRoutes.mechanicsOrderDetailsRoute: (context) =>
      MechanicsOrderDetailsScreen(),
  AppRoutes.electricityCraftmanRoute: (context) => ElectricianCraftsmanScreen(),
  AppRoutes.carpentryCraftmanRoute: (context) => CarpentryCraftsmanScreen(),
  AppRoutes.painterCraftmanRoute: (context) => PainterCraftsmanScreen(),
  AppRoutes.plumberCraftmanRoute: (context) => PlumberCraftsmanScreen(),
  AppRoutes.electricalApplianceCraftmanRoute: (context) => ElectricalApplianceCraftsmanScreen(),
  AppRoutes.lastPageRoute: (context) => LastPage(),
};
