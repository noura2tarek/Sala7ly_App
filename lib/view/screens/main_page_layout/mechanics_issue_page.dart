import 'package:flutter/material.dart';
import 'package:sala7ly_app/view/screens/main_page_layout/widgets/continue_button.dart';
import '../../../core/resources/app-strings.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/resources/app_styles.dart';
import '../../../core/resources/image_assets.dart';
import '../../../core/resources/routes_manager.dart';

class MechanicsIssueScreen extends StatelessWidget {
  const MechanicsIssueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /*------- first stack -------*/
            Stack(
              children: [
                /*------- first container-------*/
                Container(
                  height: 190.0,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      opacity: 0.7,
                      image: AssetImage(AppImages.mechanics),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25.0),
                        topLeft: Radius.circular(25.0)),
                  ),
                  padding: const EdgeInsets.only(left: 2.0, top: 118.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                AppStrings.mechanics,
                                style: timesBold(
                                  fontStyle: FontStyle.normal,
                                  color: AppColors.black,
                                  fontSize: 21.0,
                                ),
                              ),
                              Container(
                                height: 6.0,
                                width: 95.0,
                                decoration: const BoxDecoration(
                                  color: AppColors.brown,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25.0),
                                      topRight: Radius.circular(25.0)),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            AppStrings.discounts,
                            style: timesBold(
                              fontStyle: FontStyle.normal,
                              color: AppColors.black,
                              fontSize: 21.0,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        endIndent: 24.0,
                        indent: 19.0,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 73.0, left: 19.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Image(
                      height: 30.0,
                      width: 30.0,
                      image: AssetImage(AppImages.returnLeading),
                    ),
                  ),
                ),
              ],
            ),
            /*------- second stack -------*/
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  width: double.infinity,
                  height: 534.0,
                  padding:
                      const EdgeInsets.only(top: 65.0, left: 11.0, right: 10.0),
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    image: DecorationImage(
                      image: AssetImage(
                        AppImages.imageBlank,
                      ),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.specialMechanicalRequest,
                        style: interBold(
                            fontStyle: FontStyle.normal,
                            fontSize: 18.0,
                            color: AppColors.black),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 26.0),
                        child: GestureDetector(
                          onTap: () {
                            //add extra specific issue
                          },
                          child: Row(
                            children: [
                              Image.asset(AppImages.editIcon),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                AppStrings.addExtraSpecific,
                                style: interBold(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15.0,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Text(
                          AppStrings.anyOtherRepairs,
                          style: interRegular(
                            fontStyle: FontStyle.normal,
                            fontSize: 15.0,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                      const Spacer(),

                      /*----- Continue button -----*/
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 40.0),
                          child: ContinueButton(onTab: () {
                            Navigator.pushReplacementNamed(context,
                                AppRoutes.mechanicalCraftmanRoute);
                          },),
                        ),
                      ),
                    ],
                  ),
                ),
                /*----- person image -----*/
                RotatedBox(
                  quarterTurns: 4,
                  child: Image.asset(
                    AppImages.mechanics2,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
