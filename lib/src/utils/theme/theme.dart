import 'package:flutter/material.dart';
import 'package:flutter_splash/src/utils/theme/widget_theme/text_team.dart';
class AppTheme{
  static ThemeData lightTheme = ThemeData(brightness: Brightness.light,
  textTheme:DTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark,
  textTheme:DTextTheme.darkTextTheme,
  );

}