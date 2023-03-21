
import 'package:flutter_splash/src/features/authentication/screens/onbording_screen/onbording.dart';
import 'package:get/get.dart';

import '../../features/authentication/screens/welcome_screen/welcome.dart';



class FaidInAnimationController extends GetxController{

 // static FaidInAnimationController get find => Get.find();
    
  RxBool animate=false.obs;
  Future startSplashAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
   
      animate.value = true;

    await Future.delayed(const Duration(milliseconds: 3000));

          animate.value = false;
    
    await Future.delayed(const Duration(milliseconds: 2000));

    Get.to( WelcomeApp());
   // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomeApp()));
  
  }

    Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
   
      animate.value = true;
  }



}
