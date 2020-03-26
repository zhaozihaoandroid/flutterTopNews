import 'package:flutter/material.dart';
import 'package:flutter_app_topnews/main/MainPage.dart';

class RoutesBuilder{

  static Map<String,WidgetBuilder> getRoutes(){
    return {
      '/route/mainPage':(_)=>new MainPage(),
    };
  }
}