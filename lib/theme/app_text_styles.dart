import 'package:flutter/material.dart';
import '../app_constants/app_colors.dart';

class AppTextSizes {
  static const double small12 = 12.0;
  static const double small14 = 14.0;
  static const double small16 = 16.0;
  static const double medium18 = 18.0;
  static const double medium20 = 20.0;
  static const double medium25 = 25.0;
  static const double large30 = 30.0;
  static const double veryLarge40 = 40.0;
  static const double extraLarge50 = 50.0;
}

class AppTextStyles {
  static const String fontFamily = 'Poppins';

  static const baseTextStyle = TextStyle(
    fontFamily: fontFamily,
    color: AppColors.textPrimaryColor,
  );

  static final titleSmall16 = baseTextStyle.copyWith(
    fontSize: AppTextSizes.small16,
    fontWeight: FontWeight.w700,
  );

  static final titleMedium30 = baseTextStyle.copyWith(
    fontSize: AppTextSizes.large30,
    fontWeight: FontWeight.w700,
  );

  static final titleLarge50 = baseTextStyle.copyWith(
    fontSize: AppTextSizes.extraLarge50,
    fontWeight: FontWeight.w700,
  );

  static final bodySmall12 = baseTextStyle.copyWith(
    fontSize: AppTextSizes.small12,
    fontWeight: FontWeight.w500,
  );

  static final bodySmall14 = baseTextStyle.copyWith(
    fontSize: AppTextSizes.small14,
    fontWeight: FontWeight.w500,
  );
  static final bodySmall16 = baseTextStyle.copyWith(
    fontSize: AppTextSizes.small16,
    fontWeight: FontWeight.w500,
  );

  static final bodySmall16SemiBold = baseTextStyle.copyWith(
    fontSize: AppTextSizes.small16,
    fontWeight: FontWeight.w600,
  );
  static final bodyMedium20 = baseTextStyle.copyWith(
    fontSize: AppTextSizes.medium20,
  );

  static final bodyMedium18 = baseTextStyle.copyWith(
    fontSize: AppTextSizes.medium18,
    fontWeight: FontWeight.w500,
  );

  static final bodyLarge25 = baseTextStyle.copyWith(
    fontSize: AppTextSizes.medium25,
    fontWeight: FontWeight.w400,
  );

  static final veryLargeText40 = baseTextStyle.copyWith(
    fontSize: AppTextSizes.veryLarge40,
    fontWeight: FontWeight.w500,
  );

  static final extraLargeText50 = baseTextStyle.copyWith(
    fontSize: AppTextSizes.extraLarge50,
    fontWeight: FontWeight.w500,
  );

    //refactor to apptheme
  static TextStyle subtitleStyle =
      TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: AppColors.textColour);
  static TextStyle generalStyle = const TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(71, 71, 71, 1));
  static TextStyle lessonBoxTextStyle =
      const TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
  static TextStyle titleStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24);
  static TextStyle fadedText = const TextStyle(color: Colors.black38);
  static TextStyle bigText = const TextStyle(fontSize: 35);
  static TextStyle fadedDetailText =
      TextStyle(color: AppColors.tealColour.withOpacity(0.6), fontSize: 12);
  static TextStyle midBold =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 15);

}

class AppTheme {
  static final appTextTheme = TextTheme(
    titleLarge: AppTextStyles.extraLargeText50
        .copyWith(color: AppColors.textSecondaryColor),
    titleMedium:
        AppTextStyles.titleMedium30.copyWith(color: AppColors.textSecondaryColor),
    titleSmall:
        AppTextStyles.titleSmall16.copyWith(color: AppColors.textSecondaryColor),
    bodyLarge:
        AppTextStyles.bodyLarge25.copyWith(color: AppColors.textSecondaryColor),
    bodyMedium:
        AppTextStyles.bodyMedium20.copyWith(color: AppColors.textSecondaryColor),
    bodySmall:
        AppTextStyles.bodySmall16.copyWith(color: AppColors.textSecondaryColor),
    labelMedium: AppTextStyles.extraLargeText50
        .copyWith(color: AppColors.textSecondaryColor),
  );
}
