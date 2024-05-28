import 'package:flutter/material.dart';
import 'package:sala7ly_app/core/resources/app_colors.dart';
import 'package:sala7ly_app/core/resources/app_styles.dart';
import '../../../core/resources/app-strings.dart';
import '../../../core/resources/image_assets.dart';

class PlumbingOrderDetailsScreen extends StatelessWidget {
  const PlumbingOrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                opacity: 0.8,
                image: AssetImage(AppImages.imageBlank),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 70.0, right: 20.0, left: 20.0, bottom: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      AppStrings.order,
                      style: interBold(
                        fontStyle: FontStyle.normal,
                        color: AppColors.black,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      AppStrings.plumbingAddress,
                      style: interRegular(
                          fontStyle: FontStyle.normal, color: AppColors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 70.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        AppStrings.faucetsInstallation,
                        style: interBold(
                          fontSize: 18.0,
                          fontStyle: FontStyle.normal,
                          color: AppColors.black,
                        ),
                      ),
                      const Spacer(),
                      Image.asset(AppImages.person5, height: 50.0, width: 40.0,),
                    ],
                  ),
                  Text(
                    'Diab Amir', //craft man info
                    style: interRegular(
                        fontStyle: FontStyle.normal, color: AppColors.black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'EGP 350.00',
                        style: interBold(
                          fontSize: 14.0,
                          fontStyle: FontStyle.normal,
                          color: AppColors.black,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          // add issue
                        },
                        child: const Text(
                          '+ add issue',
                          style: TextStyle(
                            color: AppColors.darkBrown,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Divider(
                    color: AppColors.primaryColor.withOpacity(0.5),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    AppStrings.summary,
                    style: interBold(
                      fontSize: 23.0,
                      fontStyle: FontStyle.normal,
                      color: AppColors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        AppStrings.repairsSubtotal,
                        style: interRegular(
                          fontSize: 15.0,
                          fontStyle: FontStyle.normal,
                          color: AppColors.black,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'EGP 200.00',
                        style: TextStyle(
                          color: AppColors.darkBrown,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        AppStrings.deliveredCraftsmanFee,
                        style: interRegular(
                          fontSize: 15.0,
                          fontStyle: FontStyle.normal,
                          color: AppColors.black,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'EGP 50.00',
                        style: TextStyle(
                          color: AppColors.darkBrown,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        AppStrings.extraServiceFee,
                        style: interRegular(
                          fontSize: 15.0,
                          fontStyle: FontStyle.normal,
                          color: AppColors.black,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'EGP 100.00',
                        style: TextStyle(
                          color: AppColors.darkBrown,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          AppStrings.totalAmount,
                          style: interBold(
                            fontSize: 17.0,
                            fontStyle: FontStyle.normal,
                            color: AppColors.black,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'EGP 350.00',
                          style: interBold(
                              color: AppColors.darkBrown,
                              fontStyle: FontStyle.normal,
                              fontSize: 19.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 55.0,
                  ),
                  /*--------- Checkout button---------*/
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 47.0,
                      width: 150.0,
                      decoration: const BoxDecoration(
                        color: AppColors.darkBrown,
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          AppStrings.checkOut,
                          style: interMedium(
                            fontStyle: FontStyle.normal,
                            fontSize: 19.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
