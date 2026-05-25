import 'package:flutter/material.dart';
import 'package:project_1/core/utils/app_colors.dart';

class DefaultStyle {
  static final defaultTitleStyle = TextStyle(
    fontSize: 24,
    color: AppColors.textPrimaryColor,
    fontWeight: .bold
  );

  static final defaultMdTitleStyle = TextStyle(
    fontSize: 20,
    color: AppColors.textPrimaryColor,
    fontWeight: .bold
  );

  static final defaultTextStyle = TextStyle(
    fontSize: 16,
    color: AppColors.secondary,
  );

  static final defaultTextBoldStyle = TextStyle(
    fontSize: 18,
    color: AppColors.secondary,
    fontWeight: .w900
  );

  static final cartItemPriceStyle = TextStyle(
    fontSize: 18,
    color: AppColors.tabColor,
    fontWeight: .w900
  );

  static final defaultLessTextStyle = TextStyle(
    fontSize: 16,
    color: AppColors.secondary.withAlpha(200),
  );



}