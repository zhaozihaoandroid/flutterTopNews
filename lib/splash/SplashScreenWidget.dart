import 'package:flutter/material.dart';
import 'package:flutter_app_topnews/util/PhoneInfoUtil.dart';
import 'package:flutter_app_topnews/main/MainPage.dart';
import 'package:flutter_app_topnews/values/strings.dart';
import 'package:flutter_app_topnews/util/RenderUtil.dart';
import 'package:flutter_app_topnews/splash/SplashDialogWidget.dart';
import 'package:flutter_app_topnews/views/WebViewWidget.dart';

class SplashScreenWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreenWidget> {
  var first=true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    popupDialog();
    if(first==true){
      Future.delayed(Duration.zero,()=>popupDialog());
      first=false;
    }
    var constrainedBox = ConstrainedBox(
      constraints: new BoxConstraints.expand(),
      child: Image.asset(
        "images/splash.jpg",
        fit: BoxFit.cover,
      ),
    );
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new GestureDetector(
//      color: Colors.white,
        child: constrainedBox,
        onTap: (){ _jumpToMainPage(context);},
//      child: Image.asset("images/splash.jpg",fit: BoxFit.cover,height: PhoneInfoUtil.getScreenHeight(context)),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _jumpToMainPage(context) {
    Navigator.pop(context, false);
    Navigator.of(context).pushNamed("/route/mainPage");
  }

  void popupDialog() {
    showDialog<Null>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new SplashDialogWidget();
        });
  }

}
