import 'package:flutter/material.dart';
import 'package:flutter_splash/src/common_widgets/fade_in_animation/fade_in_animation.dart';
import 'package:flutter_splash/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter_splash/src/constants/colors.dart';
import 'package:get/get.dart';
import '../../../../constants/images_string.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';
import '../../../../common_widgets/fade_in_animation/fadein_animation_controller.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) :super(key:key);

//SplashScreenController splashScreenController =SplashScreenController();

  // @override
  // void initState() {
  
  //   startAnimation();
  // }
  
  @override

  Widget build(BuildContext context) {
    final  controller =Get.put(FaidInAnimationController());
    controller.startSplashAnimation();
    return  Scaffold(
      body: SafeArea(
        child:Stack(
        children: [
        DFadeInAnimation(
          durationInMs: 1600,
        animationPosstion:DAnimationPosstion(
          topAfter: 0,topBefore: -30,leftBefore: -30,leftAfter: 0,
        ),
        child: const Image(image: AssetImage(dSplashTopIcons),),
        ),
        
         DFadeInAnimation(
          durationInMs: 2000,
          animationPosstion: DAnimationPosstion(
            topAfter: 80,topBefore: 80,leftAfter: dDefaultSize,leftBefore: -80,
          ),
          //  child: Obx(
          //    ()=> AnimatedPositioned(
          //     duration: const Duration(milliseconds: 2600),
          //     top:80,
          //     left:controller.animationPosstion.value?dDefaultSize: -80,
          //     child:AnimatedOpacity(
          //       duration: const Duration(milliseconds: 1600),
          //       opacity: FaidInAnimationController.animationPosstion.value?1:0,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(dAppName,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                  
                  ),
                  Text(dAppTagLine ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)
                  ],
              
                ),
              ),
              
        
          //        ),
           //),
        // ),
         DFadeInAnimation(
          durationInMs: 2400,
          animationPosstion: DAnimationPosstion(
            bottomBefore: 0,bottomAfter: 100,
          ),
         child: const Image(image: AssetImage(dSplashImage),),),

        //  Obx(
        //    ()=> AnimatedPositioned(
        //       duration: const Duration(milliseconds: 2400),
        //       bottom: splashScreenController.animate.value ? 100:0,
              
        //       child: AnimatedOpacity(
        //       duration: const Duration(milliseconds: 2000),
        //       opacity: splashScreenController.animate.value?1:0,
        //         child: const Image(image: AssetImage(dSplashImage),)),
        //       ),
        //  ),

        DFadeInAnimation(
          durationInMs: 2400,
          animationPosstion: DAnimationPosstion(
           bottomBefore: 0,bottomAfter: 60,rightAfter: dDefaultSize,rightBefore: dDefaultSize,
          ),
        //  Obx(
        //    ()=> AnimatedPositioned(
        //      duration: const Duration(milliseconds: 2000),
        //       bottom: splashScreenController.animate.value ?60:0,
        //       right: dDefaultSize,
        //         child: AnimatedOpacity(
        //       duration: const Duration(milliseconds: 2000),
        //       opacity: splashScreenController.animate.value?1:0,
              child: Container(
                width: dSplashContainerSize,
                height: dSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                    color: dPrimaryColor,
                ),
             // ),
              //),
              ),
         ),
        
        ],
      ),
      ),
    );
  }
  }

