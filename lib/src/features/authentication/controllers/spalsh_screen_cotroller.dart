import 'package:flutter/material.dart';
import 'package:flutter_splash/src/features/authentication/screens/onbording_screen/onbording.dart';
import 'package:get/get.dart';

import '../screens/welcome_screen/welcome.dart';

class SplashScreenController extends GetxController{

  static SplashScreenController get find => Get.find();
    
  RxBool animate=false.obs;
  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
   
      animate.value = true;

    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(OnbordingScreen());
   // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomeApp()));
  
  }
}
