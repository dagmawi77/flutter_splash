import 'package:flutter/material.dart';
import 'package:flutter_splash/src/constants/colors.dart';
import 'package:flutter_splash/src/constants/sizes.dart';

class DElevatedButtonTheme{
  DElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  foregroundColor: dWhiteColor,
                  backgroundColor: dSecondaryColor,
                  side: BorderSide(
                  color: dSecondaryColor,
                  ),
                  padding:EdgeInsets.symmetric(vertical: dButtonHeight)
                    
                  ),

  );
   static final darkElevatedButtonTheme = ElevatedButtonThemeData(

    style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  foregroundColor: dSecondaryColor,
                  backgroundColor: dWhiteColor,
                  side: BorderSide(
                  color: dSecondaryColor,),
                  padding:EdgeInsets.symmetric(vertical: dButtonHeight)
                    
                  ),
   );

}