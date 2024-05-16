import 'package:flutter/material.dart';

class AppColors {
  //Greys
  static const Color black = Colors.black;
  static const Color offBlack = Color(0xFF262626);
  static const Color darkGrey = Color(0xFF515357);
  static const Color grey = Color(0xFF8A8C93);
  static const Color lightGrey = Color(0xFFD7D8E5);
  static const Color offWhite = Color(0xFFF4F5F5);
  static const Color white = Colors.white;

  //Colors
  static const Color red = Color(0xFFFF3B00);
  static const Color green = Color(0xFF00CC00);
  static const Color orange = Color(0xFFFF6623);

  //Layout
  static const Color background = Colors.black;
  static const Color backgroundSecondary = Color(0xFF262626);
  static const Color border = Color(0xFF262626);

  //Typography
  static const Color heading = Colors.white;
  static const Color text = Color(0xFFD7D8E5);
  static const Color textSecondary = Color(0xFF8A8C93);

  //Interactive
  static const Color primary = Colors.white;
  static const Color handle = Colors.black;
  static const Color colorHandle = Colors.white;
  static const Color outline = Color(0xFF515357);

  //Special
  static const Color brand = Colors.white;
  static const Color danger = Color(0xFFFF3800);
  static const Color success = Color(0xFF00CC00);
  static const Color bitcoin = Color(0xFFFF6623);
}

class AppTextStyles {
  //Headings
  static const TextStyle heading1 = TextStyle(
      fontSize: 48,
      color: AppColors.heading,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w700,
      height: 0);
  static const TextStyle heading2 = TextStyle(
      fontSize: 32,
      color: AppColors.heading,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w700,
      height: 0);
  static const TextStyle heading3 = TextStyle(
      fontSize: 24,
      color: AppColors.heading,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w700,
      height: 0);
  static const TextStyle heading4 = TextStyle(
      fontSize: 20,
      color: AppColors.heading,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w700,
      height: 0);
  static const TextStyle heading5 = TextStyle(
      fontSize: 16,
      color: AppColors.heading,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w700,
      height: 0);
  static const TextStyle heading6 = TextStyle(
      fontSize: 14,
      color: AppColors.heading,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w700,
      height: 0);

  //Text
  static const TextStyle textXL = TextStyle(
      fontSize: 24,
      color: AppColors.text,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w400,
      height: 0);
  static const TextStyle textLG = TextStyle(
      fontSize: 20,
      color: AppColors.text,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w400,
      height: 0);
  static const TextStyle textMD = TextStyle(
      fontSize: 16,
      color: AppColors.text,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w400,
      height: 0);
  static const TextStyle textSM = TextStyle(
      fontSize: 14,
      color: AppColors.text,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w400,
      height: 0);
  static const TextStyle textXS = TextStyle(
      fontSize: 12,
      color: AppColors.text,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w400,
      height: 0);

  //Labels
  static const TextStyle labelXL = TextStyle(
      fontSize: 24,
      color: AppColors.primary,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w500,
      height: 0);
  static const TextStyle labelLG = TextStyle(
      fontSize: 20,
      color: AppColors.primary,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w500,
      height: 0);
  static const TextStyle labelMD = TextStyle(
      fontSize: 16,
      color: AppColors.primary,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w500,
      height: 0);
  static const TextStyle labelSM = TextStyle(
      fontSize: 14,
      color: AppColors.primary,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w500,
      height: 0);
  static const TextStyle labelXS = TextStyle(
      fontSize: 12,
      color: AppColors.primary,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w500,
      height: 0);

  //Brand
  static const TextStyle brandXL = TextStyle(
      fontSize: 24,
      color: AppColors.primary,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w900,
      height: 0);
  static const TextStyle brandLG = TextStyle(
      fontSize: 20,
      color: AppColors.primary,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w900,
      height: 0);
  static const TextStyle brandMD = TextStyle(
      fontSize: 16,
      color: AppColors.primary,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w900,
      height: 0);
  static const TextStyle brandSM = TextStyle(
      fontSize: 14,
      color: AppColors.primary,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w900,
      height: 0);
  static const TextStyle brandXS = TextStyle(
      fontSize: 12,
      color: AppColors.primary,
      fontFamily: "Outfit",
      fontWeight: FontWeight.w900,
      height: 0);
}

class AppIcons {
  //brand mark
  static const String brandmarkXL = 'assets/icons/brandmarkXL.svg';
  static const String brandmarkLG = 'assets/icons/brandmarkLG.svg';
  static const String brandmarkMD = 'assets/icons/brandmarkMD.svg';
  static const String brandmarkSM = 'assets/icons/brandmarkSM.svg';
  static const String brandmarkXS = 'assets/icons/brandmarkXS.svg';
}
