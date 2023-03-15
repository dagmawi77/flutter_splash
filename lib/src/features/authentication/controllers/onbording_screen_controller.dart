
import 'package:flutter_splash/src/constants/colors.dart';
import 'package:flutter_splash/src/constants/text_string.dart';
import 'package:flutter_splash/src/features/authentication/models/model_onbording.dart';
import 'package:flutter_splash/src/features/authentication/screens/onbording_screen/onbording_page_widget.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import '../../../constants/images_string.dart';

class OnBordingController extends GetxController{
    final controller = LiquidController();

    RxInt currentPage=0.obs;

    final pages  =[
      onbording_page_widget(
        model:OnBordingModel(
        image: dOnBordingImage1,
        title: dTitle1,
        subTitle: dSubTitle1,
        counterText: dOnbordingCount1,
        bgColor: dOnBordingPage1Color),
      ),
      onbording_page_widget(
        model:OnBordingModel(
        image: dOnBordingImage2,
        title: dTitle2,
        subTitle: dSubTitle2,
        counterText: dOnbordingCount2,
        bgColor: dOnBordingPage2Color
      ),
      ),
      onbording_page_widget(
          model:OnBordingModel(
        image: dOnBordingImage3,
        title: dTitle3,
        subTitle: dSubTitle3,
        counterText: dOnbordingCount3,
    
        bgColor: dOnBordingPage3Color


      ),
      ),
    ];


void onPageChangeCallback(int activePageIndex)=> currentPage.value = activePageIndex;
animateToNextSlide(){
  int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
    }
skip()=>controller.jumpToPage(page: 2);

}
