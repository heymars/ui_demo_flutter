
import 'package:flutter/material.dart';
import 'package:ui_demo/resource/app_dimensions.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const regB5_400 = TextStyle(
    fontFamily: FontFamilies.inter,
    fontSize: kDimen14,
    fontWeight: FontWeight.w400,
    color: AppColors.rhythm,
  );

  static const regB4_400 = TextStyle(
    fontFamily: FontFamilies.inter,
    fontSize: kDimen16,
    fontWeight: FontWeight.w400,
    color: AppColors.rhythm,
  );


  static const medB5_500 = TextStyle(
    fontFamily: FontFamilies.inter,
    fontSize: kDimen14,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );

  static const medB2_500 = TextStyle(
    fontFamily: FontFamilies.inter,
    fontSize: kDimen24,
    fontWeight: FontWeight.w500,
    color: AppColors.chineseBlack,
  );

  static const medB4_500 = TextStyle(
    fontFamily: FontFamilies.inter,
    fontSize: kDimen16,
    fontWeight: FontWeight.w500,
    color: AppColors.chineseBlack,
  );

  static const medB3_500 = TextStyle(
    fontFamily: FontFamilies.inter,
    fontSize: kDimen20,
    fontWeight: FontWeight.w500,
    color: AppColors.chineseBlack,
  );

  static const regB3_400 = TextStyle(
    fontFamily: FontFamilies.inter,
    fontSize: kDimen20,
    fontWeight: FontWeight.w400,
    color: AppColors.rhythm,
  );

  static const boldB2_700 = TextStyle(
    fontFamily: FontFamilies.inter,
    fontSize: kDimen24,
    fontWeight: FontWeight.w700,
    color: AppColors.chineseBlack,
  );

  static const boldB4_700 = TextStyle(
    fontFamily: FontFamilies.inter,
    fontSize: kDimen16,
    fontWeight: FontWeight.w700,
    color: AppColors.chineseBlack,
  );

}
class FontFamilies {
  static const inter = "Inter";
}