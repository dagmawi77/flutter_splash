import 'package:flutter/material.dart';
import 'package:flutter_splash/src/constants/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../constants/images_string.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';
import '../../controllers/spalsh_screen_cotroller.dart';
import '../welcome_screen/welcome.dart';


class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) :super(key:key);

//SplashScreenController splashScreenController =SplashScreenController();
final  splashScreenController =Get.put(SplashScreenController());

  // @override
  // void initState() {
  
  //   startAnimation();
  // }
  
  @override

  Widget build(BuildContext context) {
    splashScreenController.startAnimation();
    return  Scaffold(
      body: SafeArea(
        child:Stack(
        children: [
        Obx( ()=>AnimatedPositioned(
            duration: const Duration(milliseconds: 2000),
              top : splashScreenController.animate.value?0:-30,
              left : splashScreenController.animate.value?0:-30,
              
              child: Image(image: AssetImage(dSplashTopIcons),),),
        ),
         Obx(
           ()=> AnimatedPositioned(
            duration: const Duration(milliseconds: 2600),
            top:80,
            left:splashScreenController.animate.value?dDefaultSize: -80,
            child:AnimatedOpacity(
              duration: const Duration(milliseconds: 1600),
              opacity: splashScreenController.animate.value?1:0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(dAppName,style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )
                
                ),
                Text(dAppTagLine ,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),)
                ],
            
              ),
            ),
            
         
                 ),
         ),
         Obx(
           ()=> AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashScreenController.animate.value ? 100:0,
              
              child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              opacity: splashScreenController.animate.value?1:0,
                child: Image(image: AssetImage(dSplashImage),)),
              ),
         ),
         Obx(
           ()=> AnimatedPositioned(
             duration: const Duration(milliseconds: 2000),
              bottom: splashScreenController.animate.value ?60:0,
              right: dDefaultSize,
                child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              opacity: splashScreenController.animate.value?1:0,
              child: Container(
                width: dSplashContainerSize,
                height: dSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                    color: dPrimaryColor,
                ),
              ),
              ),
              ),
         ),
        
        ],
      ),
      ),
    );
  }
  }
  