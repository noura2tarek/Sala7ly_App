import 'package:flutter/material.dart';
import 'package:sala7ly_app/core/resources/app-strings.dart';
import 'package:sala7ly_app/core/resources/app_styles.dart';
import 'package:sala7ly_app/core/resources/image_assets.dart';
import '../../../core/resources/app_colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 238.0,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25.0),
                          topLeft: Radius.circular(25.0)),
                    ),
                    padding: const EdgeInsets.only(left: 16.0, top: 36.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.delivering,
                          style: interRegular(
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0,
                            color: AppColors.white.withOpacity(0.7),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              AppStrings.userLocation, //user location
                              style: interBold(
                                fontStyle: FontStyle.normal,
                                fontSize: 15.0,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: AppColors.white,
                            ),
                          ],
                        ),
                        const SizedBox(height: 25.0),
                        Text(
                          AppStrings.heyUser, //user name
                          style: interBold(
                            fontStyle: FontStyle.normal,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 250.0,
                          child: Text(
                            AppStrings.welcomeBack,
                            style: interRegular(
                              fontStyle: FontStyle.normal,
                              fontSize: 14.0,
                              color: AppColors.white.withOpacity(0.7),
                              wordSpacing: 0.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Image(
                    image: AssetImage(
                      AppImages.craftPhoto,
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.only(top: 65.0, left: 11.0, right: 10.0),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  image: const DecorationImage(
                    image: AssetImage(AppImages.background),
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
                    const SizedBox(
                      height: 20.0,
                    ),
                    /*----- New order button -----*/
                    GestureDetector(
                      onTap: () {
                        // make order
                      },
                      child: Container(
                        width: 156.0,
                        height: 44.0,
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 7.0),
                        decoration: BoxDecoration(
                          color: AppColors.darkBrown,
                          borderRadius: BorderRadius.circular(60.0),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: AppColors.white.withOpacity(0.6),
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Text(
                             AppStrings.newOrder,
                              style: interMedium(
                                  fontSize: 19.0,
                                  color: AppColors.white.withOpacity(0.6)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 19.0,
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisSpacing: 8.0,
                      childAspectRatio: 1.3,
                      children: List.generate(
                        6,
                        (index) => GestureDetector(
                          onTap: () {
                            // navigate to painting
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 189.0,
                                height: 80.0,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25.0)),
                                  image: DecorationImage(
                                    image: AssetImage(AppImages.photo),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 13.0),
                                child: Text(
                                  AppStrings.painting,
                                  style: interMedium(
                                      color: AppColors.black,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25.0),
              bottomLeft: Radius.circular(25.0)),
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.primaryColor,
          iconSize: 23.0,
          unselectedFontSize: 14.0,
          elevation: 0.0,
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage(AppImages.homeIcon),
                height: 31.0,
                width: 30.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage(AppImages.ordersIcon),
                height: 31.0,
                width: 30.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage(AppImages.notificationsIcon),
                height: 31.0,
                width: 30.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage(AppImages.settingsIcon),
                height: 31.0,
                width: 30.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage(AppImages.user2Icon),
                height: 31.0,
                width: 30.0,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
