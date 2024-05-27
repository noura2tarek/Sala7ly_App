import 'package:flutter/material.dart';
import 'package:sala7ly_app/core/resources/app_styles.dart';
import 'package:sala7ly_app/core/resources/routes_manager.dart';
import 'package:sala7ly_app/view/screens/auth/widgets/custom_button.dart';
import '../../../core/resources/app-strings.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/resources/image_assets.dart';

//this page after success payment
class LastPage extends StatelessWidget {
  const LastPage({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.correct),
            const SizedBox(height: 30.0,),
            Text(
              AppStrings.congrats,
              style: interRegular(
                  color: AppColors.black,
                  fontSize: 30.0,
                  fontStyle: FontStyle.normal),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Text(
                AppStrings.yourOrder,
                textAlign: TextAlign.center,
                style: interRegular(
                  color: AppColors.black,
                  fontSize: 17.0,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            /*---- Take another button ---*/
            CustomButton(
              buttonText: AppStrings.takeAnotherOrder,
              height: 43.0,
              width: 142.0,
              fontSize: 14.0,
              color: AppColors.darkBrown2,
              onPressed: () {
                // take order method
              },
            ),
            const SizedBox(height: 10.0,),
            /*---- Go to home button ---*/
            CustomButton(
              buttonText: AppStrings.goToHome,
              height: 43.0,
              width: 142.0,
              fontSize: 14.0,
              color: AppColors.darkBrown2,
              onPressed: () {
                // go to home
                Navigator.pushReplacementNamed(context, AppRoutes.mainPageRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
