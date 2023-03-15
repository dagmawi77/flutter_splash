
import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../models/model_onbording.dart';

class onbording_page_widget extends StatelessWidget {
  const onbording_page_widget({
    super.key,
    required this.model,
  });

  final OnBordingModel model;

  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    
    return Container(
      padding:  const EdgeInsets.all(dDefaultSize),
      color: model.bgColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
         Image(image: AssetImage(model.image),
        height: size.height * 0.5,
        ),
        
        Column(
          children: [
            Text(model.title ,style:Theme.of(context).textTheme.titleLarge,
            selectionColor: Colors.black,
            ),
          Text(model.subTitle,
          textAlign: TextAlign.center,
          style:const TextStyle(
           //color: Colors.black,
        ),),
          ],
         ),
        
        
         Text(model.counterText,style:const TextStyle(
          // color: Colors.black,
        ),),

        const SizedBox(
          height: 90,
        )
      ],
    ),
    );
  }
}