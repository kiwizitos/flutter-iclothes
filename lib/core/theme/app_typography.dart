import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTypography {
  static TextStyle? bodyText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(
      color: AppColors.black
    );
  }

  static TextStyle? bodyTextBold(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle? subText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 12,
    );
  }

  static TextStyle? highlightText(BuildContext context) {
    return Theme.of(context).textTheme.headline1?.copyWith(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: AppColors.black
    );
  }

  static TextStyle? tableText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 12,
    );
  }
}
