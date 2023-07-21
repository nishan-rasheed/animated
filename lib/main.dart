import 'dart:developer';

import 'package:animated_test/animations/button_color_slide.dart';
import 'package:animated_test/controller/button_controller.dart';
import 'package:animated_test/screens/screen_navs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) =>Buttoncontroller() ,),
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenNavs()
      ),
    );
  }
}