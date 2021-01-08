import 'package:flutter/material.dart';
import 'package:division/division.dart';


abstract class CustomStyle{

  static TxtStyle txtStyle = TxtStyle()
  ..fontSize(12)
  ..bold()
  ..textColor(Colors.black);


  static ParentStyle buttonStyle = ParentStyle()
  ..width(140)
    ..height(30)
    ..background.color(Colors.white)
    ..borderRadius(all: 60)
    ..border(all: 3 ,color: Colors.red)
    ..elevation(5)
    ..padding(all: 20)
    ..ripple(true,splashColor: Colors.black12);


}