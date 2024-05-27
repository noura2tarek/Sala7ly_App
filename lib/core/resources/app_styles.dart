import 'package:flutter/material.dart';
import 'app_colors.dart';

//Roboto regular 12
TextStyle robotoRegular12 = const TextStyle(
  fontWeight: FontWeight.normal,
  color: AppColors.primaryColor,
  fontSize: 12.0,
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

//Ubuntu bold
TextStyle ubuntuBold(
    {var color = const Color(0xffffffff),
      double fontSize = 15.0,
      FontStyle fontStyle = FontStyle.normal}) {
  return TextStyle(
    fontWeight: FontWeight.bold,
    color: color,
    fontSize: fontSize,
    fontStyle: fontStyle,
    fontFamily: 'Ubuntu',

  );
}