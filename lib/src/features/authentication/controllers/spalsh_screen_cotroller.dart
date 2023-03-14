import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/welcome_screen/welcome.dart';

class SplashScreenController extends GetxController{
    
  RxBool animate=false.obs;
  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
   
      animate.value = true;

    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(WelcomeApp());
   // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomeApp()));
  
  }
}
