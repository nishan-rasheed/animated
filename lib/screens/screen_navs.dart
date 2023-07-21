import 'package:animated_test/animations/button_color_slide.dart';
import 'package:animated_test/animations/mouse_finder.dart';
import 'package:flutter/material.dart';

import '../animations/slide_color.dart';

class ScreenNavs extends StatelessWidget {
  const ScreenNavs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => MouseFinder(), ));
            }, 
            child: Text('mouse cacther')),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => ButtonColorSlide(), ));
            }, 
            child: Text('button color')), 
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => SlideColor(), ));
            }, 
            child: Text('slide color')),    
        ],
      ),
    );
  }
}