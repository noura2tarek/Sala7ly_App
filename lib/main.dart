import 'package:flutter/material.dart';
import 'package:sala7ly_app/core/resources/routes_manager.dart';
import 'package:sala7ly_app/view/screens/main_page_layout/mechanics_page.dart';
import 'core/resources/app-strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: MechanicsScreen(),
      routes: routes,
    );
  }
}

