import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sala7ly_app/core/resources/app_colors.dart';
import 'package:sala7ly_app/core/resources/image_assets.dart';
import 'package:sala7ly_app/core/resources/app-strings.dart';
import '../../../core/resources/app_styles.dart';
import '../auth/login_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(
      const Duration(seconds: 4),
      _next,
    );
  }

  _next() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return  LoginScreen();
      },
    ));
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.8,
            image: AssetImage(AppImages.woodImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 153.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                AppStrings.welcomeToSalahly,
                style: interBold(),
              ),
              const Spacer(),
              Text(
                AppStrings.bestArtisans,
                style: interBold(fontSize: 15.0),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: MaterialButton(
                  color: AppColors.primaryColor,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      borderSide: BorderSide.none),
                  onPressed: () {},
                  child: Text(
                    AppStrings.getStarted,
                    style: interRegular(fontSize: 17.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
