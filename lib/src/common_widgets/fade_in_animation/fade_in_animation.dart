import 'package:flutter/material.dart';
import 'package:flutter_splash/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../constants/images_string.dart';
import 'fadein_animation_controller.dart';

class DFadeInAnimation extends StatelessWidget {
   DFadeInAnimation({
    super.key,
     required this.durationInMs,

     this.animationPosstion,
     required this.child
  });

final  controller =Get.put(FaidInAnimationController());
  final int durationInMs;
  final DAnimationPosstion? animationPosstion;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx( ()=>AnimatedPositioned(
        duration:  Duration(milliseconds: durationInMs),
          top : controller.animate.value?animationPosstion!.topAfter: animationPosstion!.topBefore,
          left : controller.animate.value?animationPosstion!.leftAfter:animationPosstion!.leftBefore,
           bottom : controller.animate.value?animationPosstion!.bottomAfter:animationPosstion!.bottomBefore,
            right : controller.animate.value?animationPosstion!.rightAfter:animationPosstion!.rightBefore,
          child: AnimatedOpacity(
              duration:  Duration(milliseconds: durationInMs),
              opacity: controller.animate.value?1:0,
                child: child,
                //child: const Image(image: AssetImage(dSplashTopIcons),),
              ),
          ),
          
    );
  }
}
  
