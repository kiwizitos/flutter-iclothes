import 'package:flutter/material.dart';
import 'package:iclothes/core/theme/app_colors.dart';
import 'package:iclothes/core/theme/app_typography.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
    fontFamily: 'Inter',
    backgroundColor: AppColors.white,
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: ThemeData().colorScheme.copyWith(primary: AppColors.lightBlue),
  );
}