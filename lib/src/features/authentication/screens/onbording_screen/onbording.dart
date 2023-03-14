import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_splash/src/constants/colors.dart';
import 'package:flutter_splash/src/constants/images_string.dart';
import 'package:flutter_splash/src/constants/text_string.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
           LiquidSwipe(pages:[
            Container(color: dOnBordingPage1Color,
            child:const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(image: AssetImage(dOnBordingImage1),),
                Text(dTitle1 ,style:TextStyle(
                   color: Colors.black,
                ),),
                Text(dSubTitle1,style:TextStyle(
                   color: Colors.black,
                ),),
                Text(dOnbordingCount1,style:TextStyle(
                   color: Colors.black,
                ),),
              ],
            ),
            ),
            Container(color: dOnBordingPage2Color,
            child: const Column(
              children: [
                Image(image: AssetImage(dOnBordingImage2),),
                Text(dTitle2),
                Text(dSubTitle2),
                Text(dOnbordingCount2),
              ],
            ),
            ),
            Container(color: dOnBordingPage3Color,
            child: const Column(
              children: [
                Image(image: AssetImage(dOnBordingImage3)),
                Text(dTitle3),
                Text(dSubTitle3),
                Text(dOnbordingCount3)

              ],
            ),
            ),
           ] )
        ],
      ),
    );
  }
}