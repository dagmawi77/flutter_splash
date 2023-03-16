import 'package:flutter/material.dart';
import 'package:flutter_splash/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:flutter_splash/src/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:flutter_splash/src/utils/theme/widget_theme/text_team.dart';
class AppTheme{
  static ThemeData lightTheme = ThemeData(brightness: Brightness.light,
  textTheme:DTextTheme.lightTextTheme,
  outlinedButtonTheme: DOutlinedButtonTheme.lightOutlinedButtonTheme,
  elevatedButtonTheme: DElevatedButtonTheme.lightElevatedButtonTheme,

  );
  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark,
  textTheme:DTextTheme.darkTextTheme,
    outlinedButtonTheme: DOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: DElevatedButtonTheme.darkElevatedButtonTheme,


  );

}