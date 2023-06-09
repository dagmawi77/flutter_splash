import 'package:flutter/material.dart';
import 'package:flutter_splash/src/common_widgets/fade_in_animation/fade_in_animation.dart';
import 'package:flutter_splash/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter_splash/src/common_widgets/fade_in_animation/fadein_animation_controller.dart';
import 'package:flutter_splash/src/constants/colors.dart';
import 'package:flutter_splash/src/constants/images_string.dart';
import 'package:flutter_splash/src/constants/sizes.dart';
import 'package:flutter_splash/src/constants/text_string.dart';
import 'package:flutter_splash/src/utils/theme/theme.dart';
import 'package:get/get.dart';

class WelcomeApp extends StatelessWidget {
  const WelcomeApp({Key? key}) :super(key:key);
  
  //get onPressed => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
       final  controller =Get.put(FaidInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness =mediaQuery.platformBrightness;
    final isDarkMode = brightness ==Brightness.dark;

    return  Scaffold(
      backgroundColor: isDarkMode ? dSecondaryColor : dPrimaryColor,
      body:  Stack(
        children:[ 
          
          DFadeInAnimation(
            durationInMs: 1200,
            animationPosstion: DAnimationPosstion(bottomAfter: 0,bottomBefore: -100,
            leftAfter: 0,
            leftBefore: 0,
            topAfter: 0,
            topBefore: 0,
            rightAfter: 0,
            rightBefore: 0,
            
            ),
            child: Container(
            padding: EdgeInsets.all(dDefaultSize),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            
              children: [
                 Image(
                  image:AssetImage(dWelcomeScreenImage,), 
                 height:height * 0.6),
                 Column(children:[ Text(dWelcomeTitle,style: Theme.of(context).textTheme.titleLarge,),
                  Text(dWelcomeSubTitle,
                  textAlign: TextAlign.center,
                  ),
                 ]
                 
                 ),
               
                  Row(
                     children: [
                      //OutlinedButton(child:Text(dLogin), onPressed: () {  },),
                      //ElevatedButton(onPressed: () {}, child:Text(dSiginUp))
                      Expanded(child: OutlinedButton(onPressed: (){}, 
                     
                      child: Text(dLogin.toUpperCase()),)),
                      SizedBox(width: 10.0,),
                      Expanded(
                      child: ElevatedButton(onPressed: () {}, 
                      
                      child:Text(dSiginUp.toUpperCase())))
                     ],
                  )
                  
              ],
            ),
                 ),
          ),
        ],
      ),
    );
  }
}