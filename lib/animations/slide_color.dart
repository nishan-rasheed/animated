import 'package:animated_test/controller/button_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SlideColor extends StatefulWidget {
  const SlideColor({super.key});

  @override
  State<SlideColor> createState() => _SlideColorState();
  
}

class _SlideColorState extends State<SlideColor> {
 
double h = 50;
double w = 70;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Consumer<Buttoncontroller>(
        builder: (context, value, child) => 
         Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MouseRegion(
                  onEnter: (event) {
                    value.changeUnderLine(10, 200);
                  },
                  onExit: (event) {
                    value.changeUnderLine(0, 0);
                  },
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Profilejkvnjk'),
                      AnimatedContainer(
                        transformAlignment: Alignment.topLeft,
                        duration: Duration(milliseconds: 500),
                        height: value.underLineHeight,
                        width: value.underLineWidth,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                

                MouseRegion(
                  onEnter: (event) {
                    value.changeUnderLine(10, 200);
                  },
                  onExit: (event) {
                    value.changeUnderLine(0, 0);
                  },
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('About'),
                      AnimatedContainer(
                        transformAlignment: Alignment.topLeft,
                        duration: Duration(milliseconds: 500),
                        height: value.underLineHeight,
                        width: value.underLineWidth,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ],
            ),
       
           
             Center(
              child: MouseRegion(
                onEnter: (event) {
                  setState(() {
                    h=100;
                    w= 200;
                  });
                },
                onExit: (event) {
                  setState(() {
                    h=50;
                    w= 70;
                  });
                },
                child: AnimatedContainer(
                  height: h,width: w,
                  color: Colors.green,
                  duration: Duration(milliseconds: 700),
                  child: Text('sjhs'),),
              ),
             ),
           ],
         ),
       ),
    );
  }
}