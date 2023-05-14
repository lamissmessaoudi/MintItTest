import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mintit/utils/colors.dart';

class AppTextStyle {
  AppTextStyle._();

  /// Font Family
  static const fontFamilyDisplay = "Display";
  static const fontFamilyRounded = "Rounded";

  ///  LoginPage
  static const titleApp = TextStyle(
    fontFamily: fontFamilyRounded,
    fontSize: 30,
    fontWeight: FontWeight.w700,
  );

  static const subTitleApp = TextStyle(
    fontFamily: fontFamilyRounded,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static const labelTextField = TextStyle(
    fontFamily: fontFamilyRounded,
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );

  static const inputFieldText = TextStyle(
    fontFamily: fontFamilyRounded,
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );
  static const hintStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: fontFamilyRounded,
    fontSize: 15.0,
    color: AppColors.hintTextColor,
  );
  static const buttonTextStyle = TextStyle(
    fontFamily: fontFamilyRounded,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: AppColors.secondaryColor,
  );

  ///  Home
  /// Home Header
  static const userNameTextStyle = TextStyle(
    fontFamily: fontFamilyRounded,
    color: AppColors.secondaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const homeTitleText = TextStyle(
    fontFamily: fontFamilyRounded,
    color: AppColors.secondaryColor,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  /// Body Home
  static const homeTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: fontFamilyRounded,
    color: AppColors.primaryColor,
    fontSize: 20,
  );

  ///Pilot Card

  static const pilotId = TextStyle(
    fontWeight: FontWeight.w900,
    color: AppColors.primaryColor,
    fontSize: 15,
    fontFamily: fontFamilyDisplay,
  );
  static const pilotName = TextStyle(
    fontWeight: FontWeight.w900,
    color: AppColors.textColor,
    fontSize: 15,
    fontFamily: fontFamilyDisplay,
  );
  static const pilotCar = TextStyle(
    fontWeight: FontWeight.w200,
    color: AppColors.textColor,
    fontSize: 13,
    fontFamily: fontFamilyDisplay,
  );
}
