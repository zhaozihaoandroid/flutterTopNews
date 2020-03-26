import 'package:flutter/material.dart';
class PhoneInfoUtil{
  static double getScreenWidth(context){
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(context){
    return MediaQuery.of(context).size.height;
  }
}