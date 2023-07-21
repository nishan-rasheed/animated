import 'dart:developer';

import 'package:flutter/material.dart';

class MouseFinder extends StatefulWidget {
  const MouseFinder({super.key});

  @override
  State<MouseFinder> createState() => _MouseFinderState();
}

class _MouseFinderState extends State<MouseFinder> {

  Offset offset = Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onHover: (e){
          // print(e);
         setState(() => offset = e.position);
        } ,
        child: Scaffold(
          backgroundColor: Colors.cyan.shade50,
          body: Stack(
            children: [
              Center(
                child: GestureDetector(
                  // behavior: HitTestBehavior.translucent,
                  onTap: (){
                    log('clicked');
                  },
                  child: const Text(
                    'hover',
                    style: TextStyle(
                      fontSize: 90,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: offset - Offset(10.0,30.0),
                child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    )),
              ),
            ],
          ),
        ),
      );
  }
}