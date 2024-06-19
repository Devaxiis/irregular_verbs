

import 'package:flutter/material.dart';
import 'package:irregular_verbs/src/utils/contants/app_colors.dart';

sealed class AppStyle{

  static const mainAppBarStyle = TextStyle(
      fontSize: 25,
      color: AppColors.colorWhite,
      fontWeight: FontWeight.w400,
  );

  static const mainCardStyle = TextStyle(
      fontSize: 21,
      color: AppColors.colorWhite,
      fontWeight: FontWeight.w400,
  );
  static const mainCard2Style = TextStyle(
      fontSize: 17,
      color: AppColors.colorWhite,
      fontWeight: FontWeight.w400,
  );

  static const splashStyle =  TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.w700,
      color: Colors.black
  );

}