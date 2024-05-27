import 'package:flutter/material.dart';
import '../../../core/resources/app-strings.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/resources/app_styles.dart';
import '../../../core/resources/image_assets.dart';

class CarpentryIssueScreen extends StatelessWidget {
  const CarpentryIssueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
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
                /*------- first container-------*/
                Container(
                  height: 190.0,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.carpentry3),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25.0),
                        topLeft: Radius.circular(25.0)),
                  ),
                  padding: const EdgeInsets.only(left: 16.0, top: 118.0),
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
                                AppStrings.carpentry,
                                style: timesBold(
                                  fontStyle: FontStyle.normal,
                                  color: AppColors.black,
                                  fontSize: 21.0,
                                ),
                              ),
                              Container(
                                height: 6.0,
                                width: 93.0,
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
              ],
            ),
            /*------- second container-------*/
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: double.infinity,
                  height: 534.0,
                  padding:
                      const EdgeInsets.only(top: 65.0, left: 11.0, right: 10.0),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    image: const DecorationImage(
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
                        AppStrings.specialCarpentryRequest,
                        style: interBold(
                            fontStyle: FontStyle.normal,
                            fontSize: 18.0,
                            color: AppColors.black),
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
                                  fontSize: 16.0,
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
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Text(
                          AppStrings.anyOtherRepairs,
                          style: interRegular(
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                      const Spacer(),

                      /*----- Continue button -----*/
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Container(
                            height: 47.0,
                            decoration: const BoxDecoration(
                                color: AppColors.darkBrown,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6.0))),
                            child: MaterialButton(
                              onPressed: () {
                                //find nearby craft man method
                              },
                              child: Column(
                                children: [
                                  Text(
                                    AppStrings.continueS,
                                    style: interMedium(
                                        fontStyle: FontStyle.normal,
                                        fontSize: 19.0),
                                  ),
                                  Text(
                                    AppStrings.findNearby,
                                    style: interMedium(
                                        fontSize: 11.0,
                                        fontStyle: FontStyle.normal,
                                        color:
                                            AppColors.white.withOpacity(0.5)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /*----- person image -----*/
                Padding(
                  padding: const EdgeInsets.only(top: 200.0),
                  child: Image.asset(
                    AppImages.carpentry2,
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
