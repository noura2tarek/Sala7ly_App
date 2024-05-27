import 'package:flutter/material.dart';
import '../../../core/resources/app-strings.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/resources/app_styles.dart';
import '../../../core/resources/image_assets.dart';

class ElectricalAppliancesScreen extends StatelessWidget {
  const ElectricalAppliancesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 73.0, left: 19.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image(
                        height: 30.0,
                        width: 30.0,
                        image: const AssetImage(
                          AppImages.returnLeading,
                        ),
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  /*------- first container-------*/
                  Container(
                    height: 190.0,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.applicant),
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
                                  AppStrings.eLectricalAppliances,
                                  style: timesBold(
                                    fontStyle: FontStyle.normal,
                                    color: AppColors.black,
                                    fontSize: 21.0,
                                  ),
                                ),
                                Container(
                                  height: 6.0,
                                  width: 200.0,
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
                          endIndent: 10.0,
                          indent: 5.0,
                          color: AppColors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              /*------- second container-------*/
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                        top: 65.0, left: 11.0, right: 10.0),
                    decoration: const BoxDecoration(
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
                        ...List.generate(
                          6,
                              (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Container(
                              padding: const EdgeInsetsDirectional.symmetric(
                                  horizontal: 10.0, vertical: 20.0),
                              width: 150.0,
                              height: 61.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(AppImages.rectangleBrown),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                              ),
                              child: Text(
                                'installation',
                                textAlign: TextAlign.center,
                                style: interBold(
                                    fontSize: 15.0,
                                    fontStyle: FontStyle.normal),
                              ),
                            ),
                          ),
                        ),
                        // buttons
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              /*----- Add other issue button -----*/
                              SizedBox(
                                height: 47.0,
                                width: 164.0,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: AppColors.buttonColor,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(6.0),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    // go to E issue page

                                  },
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.add,
                                        color: AppColors.brown,
                                        size: 17.0,
                                      ),
                                      Text(
                                        AppStrings.otherIssue,
                                        style: interMedium(
                                          fontStyle: FontStyle.normal,
                                          fontSize: 18.0,
                                          color: AppColors.brown,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              /*----- Continue button -----*/
                              Container(
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
                                            color: AppColors.white
                                                .withOpacity(0.5)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // image
                  Padding(
                    padding: const EdgeInsets.only(bottom: 85.0),
                    child: Image.asset(
                      AppImages.repair,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
