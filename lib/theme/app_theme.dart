import 'package:flutter/material.dart';

import '../app_constants/app_colors.dart';

class AppTheme{
    static ThemeData themeData = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      fontFamily: "Poppins",
      useMaterial3: true,
    );
}