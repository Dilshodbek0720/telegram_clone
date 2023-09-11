import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telegram_clone/ui/utils/colors/app_colors.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
          backgroundColor: Colors.black,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.black,
              statusBarIconBrightness: Brightness.light)),
      iconTheme: const IconThemeData(color: Colors.white),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        titleMedium: TextStyle(color: Colors.white, fontSize: 14),
        titleSmall: TextStyle(color: Colors.white, fontSize: 12),
      ),
      primaryColor: Colors.white,
      primaryColorDark: AppColors.c3D3D3F,
      brightness: Brightness.dark);

  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        elevation: 0,
          iconTheme: IconThemeData(
              color: Colors.blue
          ),
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark)),
      iconTheme: const IconThemeData(color: Colors.blue),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(color: Colors.black, fontSize: 14),
        titleSmall: TextStyle(color: Colors.black, fontSize: 12),
      ),
      primaryColor: Colors.black,
      primaryColorDark: AppColors.cA6A6AA.withOpacity(0.2),
      brightness: Brightness.light);
}
