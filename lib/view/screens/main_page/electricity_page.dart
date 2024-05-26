import 'package:flutter/material.dart';
import '../../../core/resources/app-strings.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/resources/app_styles.dart';
import '../../../core/resources/image_assets.dart';

class ElectricityScreen extends StatelessWidget {
  const ElectricityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 190.0,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0)),
                ),
                padding: const EdgeInsets.only(left: 16.0, top: 118.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Electricity', //user location
                          style: timesBold(
                            fontStyle: FontStyle.normal,
                            color: AppColors.black,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          'Discounts %', //user location
                          style: timesBold(
                            fontStyle: FontStyle.normal,
                            color: AppColors.black,
                            fontSize: 20.0,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: AppColors.white,
                        ),
                      ],
                    ),
                    Divider(
                      endIndent: 24.0,
                      indent: 24.0,
                      color: AppColors.black,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.only(top: 65.0, left: 11.0, right: 10.0),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  image: const DecorationImage(
                    image: AssetImage(AppImages.imageBlank),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.havingTrouble,
                      style: timesBold(),
                    ),
                   ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
