import 'package:flutter/material.dart';

import 'style/app_styles.dart';
import 'style/colors_app.dart';
import 'style/text_styles.dart';

class ThemeConfig {
  ThemeConfig._();

  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(7),
    borderSide: BorderSide(color: Colors.grey[400]!),
  );

  static final theme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      //backgroundColor: ColorsApp.instance.primary,
      elevation: 1,
      iconTheme: IconThemeData(color: ColorsApp.instance.black),
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
      centerTitle: true,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.instance.primary,
      primary: ColorsApp.instance.primary,
      secondary: ColorsApp.instance.secondary,
      tertiary: ColorsApp.instance.terciary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppStyles.instance.primaryButton,
    ),
    textButtonTheme: TextButtonThemeData(style: AppStyles.instance.textButton),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      //contentPadding: const EdgeInsets.all(20),
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      labelStyle: TextStyles.instance.textRegular.copyWith(color: Colors.grey),
      errorStyle:
          TextStyles.instance.textRegular.copyWith(color: Colors.redAccent),
    ),
    dialogBackgroundColor: Colors.white,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      titleTextStyle: TextStyles.instance.textTitle,
    ),
    dividerTheme: const DividerThemeData(
      indent: 10,
      endIndent: 10,
      thickness: 0.4,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: ColorsApp.instance.black,
      selectedIconTheme: IconThemeData(color: ColorsApp.instance.black),
    ),
    //cardTheme: const CardTheme(surfaceTintColor: Colors.white),
  );
}
