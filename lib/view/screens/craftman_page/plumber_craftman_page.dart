import 'package:flutter/material.dart';
import 'package:sala7ly_app/view/screens/auth/widgets/custom_button.dart';
import '../../../core/resources/app-strings.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/resources/app_styles.dart';
import '../../../core/resources/image_assets.dart';

class PlumberCraftsmanScreen extends StatelessWidget {
  PlumberCraftsmanScreen({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.brown.withOpacity(0.9),
        leading: Padding(
          padding: const EdgeInsets.only(left: 11.0),
          child: Image.asset(AppImages.user3),
        ),
        title: Container(
            height: 32.0,
            width: 135.0,
            padding: const EdgeInsetsDirectional.only(start: 8.0),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  50.0,
                ),
              ),
            ),
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Image.asset(
                  AppImages.loadingIcon,
                  height: 10.0,
                  width: 10.0,
                ),
                hintText: 'Searching for craftsman..',
                hintStyle: interMedium(
                  fontSize: 7.0,
                  color: AppColors.black.withOpacity(0.5),
                  fontStyle: FontStyle.normal,
                ),
              ),
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: GestureDetector(
                onTap: () {
                  //search for craft man method
                },
                child: Image.asset(AppImages.searchIcon)),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.5,
            image: AssetImage(AppImages.map),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 45.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 362.0,
                height: 275.0,
                padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                decoration: const BoxDecoration(
                  color: AppColors.darkBrown,
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AppImages.person2,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.craftDetails, //craft man info
                              style: interRegular(
                                fontStyle: FontStyle.normal,
                                fontSize: 18.0,
                              ),
                            ),
                            Text(
                              'Plumber',
                              style: interRegular(
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 12.0,
                                ),
                                const SizedBox(
                                  width: 3.0,
                                ),
                                Text(
                                  '4.9 - 1.k reviews',
                                  style: interRegular(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Price Range 300LE - 400LE',
                        style: interMedium(
                          fontSize: 13.0,
                          fontStyle: FontStyle.normal,
                          color: AppColors.white.withOpacity(0.7),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          //
                        },
                        child: Text(
                          'Accept Craftsman',
                          style: interMedium(
                            fontSize: 17.0,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 311,
                      color: AppColors.white.withOpacity(0.6),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          //
                        },
                        child: Text(
                          'Search Another Craftman',
                          style: interMedium(
                            fontSize: 17.0,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              CustomButton(
                buttonText: 'Cancel Request',
                onPressed: () {
                  // cancel request method
                },
                color: AppColors.darkBrown,
                width: 241.0,
                height: 38.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
