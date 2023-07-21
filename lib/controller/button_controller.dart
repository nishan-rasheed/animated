import 'package:flutter/material.dart';

class Buttoncontroller extends ChangeNotifier{

 double underLineHeight = 0;
 double underLineWidth = 0;

 changeUnderLine(double h,w){
  underLineHeight = h;
  underLineWidth = w;
  notifyListeners();
 }
  

}