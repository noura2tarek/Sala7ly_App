import 'package:flutter/material.dart';
import 'app_colors.dart';

//Roboto regular 12
TextStyle robotoRegular12 = const TextStyle(
  fontWeight: FontWeight.normal,
  color: AppColors.primaryColor,
  fontSize: 12.0,
  fontFamily: 'Roboto',
);

//Roboto regular 16
TextStyle robotoRegular16 = const TextStyle(
  fontWeight: FontWeight.normal,
  color: AppColors.primaryColor,
  fontSize: 16.0,
  fontFamily: 'Roboto',
);

//Roboto medium 16
TextStyle robotoMedium16 = const TextStyle(
  fontWeight: FontWeight.w500,
  color: AppColors.secondColor,
  fontSize: 16.0,
  fontFamily: 'Roboto',
);
//Roboto regular 17
TextStyle robotoRegular17 = const TextStyle(
  fontWeight: FontWeight.normal,
  color: AppColors.primaryColor,
  fontSize: 17.0,
  fontFamily: 'Roboto',
);

//Roboto regular 20
TextStyle robotoRegular20 = const TextStyle(
  fontWeight: FontWeight.normal,
  color: AppColors.secondColor,
  fontSize: 20.0,
  fontFamily: 'Roboto',
);

//Roboto medium 18
TextStyle robotoMedium18 = TextStyle(
  fontWeight: FontWeight.w500,
  color: AppColors.secondColor,
  fontSize: 18.0,
  fontFamily: 'Roboto',
);

//Roboto semi bold 20
TextStyle robotoSemiBold20 = TextStyle(
  fontWeight: FontWeight.w600,
  color: AppColors.secondColor,
  fontSize: 20.0,
  fontFamily: 'Roboto',
);

//Roboto semi bold 25
TextStyle robotoSemiBold25 = const TextStyle(
  fontWeight: FontWeight.w600,
  color: AppColors.primaryColor,
  fontSize: 24.0,
  fontFamily: 'Roboto',
);

//Roboto medium 32
TextStyle robotoMedium32NoShadow = const TextStyle(
  fontWeight: FontWeight.w500,
  color: AppColors.secondColor,
  fontSize: 32.0,
  fontFamily: 'Roboto',
);

///////Inter////////

//inter regular
TextStyle interRegular(
        {Color color = const Color(0xffFFFDFD),
        double fontSize = 14.0,
        double? wordSpacing,
        FontStyle fontStyle = FontStyle.italic}) =>
    TextStyle(
      fontWeight: FontWeight.w400,
      color: color,
      fontSize: fontSize,
      fontStyle: fontStyle,
      fontFamily: 'Inter',
      wordSpacing: wordSpacing,
    );

//inter medium italic 20
TextStyle interMedium(
    {double fontSize = 20.0, Color color = Colors.white , FontStyle fontStyle = FontStyle.italic}) {
  return TextStyle(
    fontWeight: FontWeight.w500,
    color: color,
    fontSize: fontSize,
    fontStyle: fontStyle,
    fontFamily: 'Inter',
  );
}

//inter semi bold 17
TextStyle interSemiBold17({required var color}) {
  return TextStyle(
    fontWeight: FontWeight.w600,
    color: color,
    fontSize: 17.0,
    fontFamily: 'Inter',
  );
}

//inter bold italic 30
TextStyle interBold(
    {var color = const Color(0xffFFFDFD),
    double fontSize = 30.0,
    FontStyle fontStyle = FontStyle.italic}) {
  return TextStyle(
    fontWeight: FontWeight.bold,
    color: color,
    fontSize: fontSize,
    fontStyle: fontStyle,
    fontFamily: 'Inter',
  );
}

//Times new roman
TextStyle timesBold(
    {var color = const Color(0xff000000),
      double fontSize = 27.0,
      FontStyle fontStyle = FontStyle.normal}) {
  return TextStyle(
    fontWeight: FontWeight.bold,
    color: color,
    fontSize: fontSize,
    fontStyle: fontStyle,
    fontFamily: 'Times New Roman',

  );
}