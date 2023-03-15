import 'package:flutter/material.dart';
import 'package:flutter_splash/src/constants/colors.dart';
import 'package:flutter_splash/src/constants/images_string.dart';
import 'package:flutter_splash/src/constants/text_string.dart';
import 'package:flutter_splash/src/features/authentication/controllers/onbording_screen_controller.dart';
import 'package:flutter_splash/src/features/authentication/screens/onbording_screen/onbording_page_widget.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../models/model_onbording.dart';

class OnbordingScreen extends StatelessWidget {
    OnbordingScreen({Key? key}) : super(key: key);
final obController = OnBordingController();

  
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
      
    

    return  Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
           LiquidSwipe(
            pages:obController.pages,
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangeCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios_new),
            enableSideReveal: true,
 ),
 Positioned(
 bottom: 60.0,
 child: OutlinedButton(
    onPressed: ()=>obController.animateToNextSlide(), 
    style: ElevatedButton.styleFrom(
      side: const BorderSide(color: Colors.black26),
      shape: const CircleBorder(),
      padding:const  EdgeInsets.all(20),
      onPrimary: Colors.white,
    ),
    child: Container(
      //color: dDarkColor,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: dDarkColor,
        shape: BoxShape.circle,
      ),
      child:const Icon(Icons.arrow_forward_ios),
    )
 
 ),
 
   ),
 


     Positioned(
      top: 50,
      right: 20,
      child: TextButton(
         onPressed: ()=>obController.skip(), 
         child: const Text("Skip",style: TextStyle(color: Colors.grey),),
      ),
     ),
   
   Obx(
     ()=> Positioned(
      bottom: 10,
      child: AnimatedSmoothIndicator(
        activeIndex:obController.currentPage.value,
        count: 3,
        effect:const WormEffect(
          dotHeight:5.0,
          activeDotColor: Color(0xff272727)
        ),
        
        ),
      ),
   ),      

            // Container(color: dOnBordingPage2Color,
            //   padding: const EdgeInsets.all(dDefaultSize),
            // child:  Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //      Image(image: AssetImage(dOnBordingImage2), height: size.height * 0.5,),
            //     Column( 
            //       children:[
            //         Text(dTitle2,style: Theme.of(context).textTheme.titleLarge,),
            //       const Text(dSubTitle2,textAlign: TextAlign.center,),
            //       ]
            //       ),
                
            //    const Text(dOnbordingCount2),
            //   ],
            // ),
            // ),
            // Container(color: dOnBordingPage3Color,
            //   padding: const EdgeInsets.all(dDefaultSize),
            // child:  Column(
            //    mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //      Image(image: AssetImage(dOnBordingImage3),),
                
            //     Column(children: [
            //       Text(dTitle3,style: Theme.of(context).textTheme.titleLarge,),
            //     const Text(dSubTitle3,textAlign: TextAlign.center,),]),
            //      const Text(dOnbordingCount3)

            //   ],
            // ),
            // ),
          // ] )

     
        ],),
    );
  }

} 