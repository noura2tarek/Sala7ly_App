import 'package:flutter/material.dart';
import 'package:sala7ly_app/view/screens/main_page_layout/widgets/continue_button.dart';
import '../../../core/resources/app-strings.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/resources/app_styles.dart';
import '../../../core/resources/image_assets.dart';
import '../../../core/resources/routes_manager.dart';

class PlumbingScreen extends StatelessWidget {
  PlumbingScreen({super.key});

  final List<String> strings = [
    AppStrings.repairOfPlumping,
    AppStrings.installWaterTreatment,
    AppStrings.emergencyPlumbing,
    AppStrings.installationOfGas,
    AppStrings.installationOfPlumping,
    AppStrings.remodelingAndRenovation,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  /*------- first container-------*/
                  Container(
                    height: 190.0,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.plumping),
                        opacity: 0.8,
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
                                  AppStrings.plumber,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 73.0, left: 19.0),
                    child: InkWell(
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
              /*------- second container-------*/
              Stack(
                alignment: Alignment.bottomRight,
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
                                  horizontal: 10.0, vertical: 10.0),
                              width: 177.0,
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
                                strings[index],
                                textAlign: TextAlign.center,
                                style: ubuntuBold(),
                              ),
                            ),
                          ),
                        ),
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
                                    // go to issue page
                                    Navigator.pushNamed(
                                        context, AppRoutes.plumbingIssueRoute);
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
                              ContinueButton(
                                onTab: () {
                                  Navigator.pushReplacementNamed(context,
                                      AppRoutes.plumberCraftmanRoute);
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  /* ---  image ----*/
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60.0),
                    child: Image.asset(
                      AppImages.plumping2,
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
