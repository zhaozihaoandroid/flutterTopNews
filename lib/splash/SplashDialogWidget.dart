import 'package:flutter/material.dart';
import 'package:flutter_app_topnews/values/strings.dart';
import 'package:flutter_app_topnews/util/RenderUtil.dart';
import 'package:flutter_app_topnews/views/WebViewWidget.dart';

class SplashDialogWidget extends AlertDialog {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      type: MaterialType.transparency,
      child: new Center(
        child: new SizedBox(
          width: 270.0,
          height: 440.0,
          child: //new Scaffold(
              //body:
              new Container(
            color: Colors.white,
            padding: EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                renderTitle(),
                renderContent(),
                renderBottomContent(context),
                renderButton(context),
              ],
            ),
          ),
        ),
      ),
      //),
    );
  }

  renderTitle() {
    return new Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text(
          strings.USER_ESSENTIALS,
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
      ],
    );
    return new Text(
      strings.USER_ESSENTIALS,
      style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
      textDirection: TextDirection.rtl,
    );
  }

  renderContent() {
    return new Text(strings.USER_ESSENTIALS_CONTENT);
  }

  renderBottomContent(context) {
    return new Column(
      children: <Widget>[
        renderText(context),
      ],
    );
  }

  renderText(context) {
    const normal = TextStyle(color: Colors.black);
    const special = TextStyle(color: Colors.blue);
    return RenderUtil.getColorText(
        strings.SEE_COMPLETE, strings.ESSENTIALS, normal, special, () {
      jumpToEssentialsPage(context);
    });
  }

  jumpToEssentialsPage(context) {
    print("webview");
    Navigator.of(context).push(new PageRouteBuilder(pageBuilder: (context,a,b){return new WebViewWidget(url:"http://www.baidu.com");}));
  }

  renderButton(context) {
    return new Row(
      textDirection: TextDirection.rtl,
      children: <Widget>[
        renderRightButton(context),
        renderLeftButton(context),
      ],
    );
  }

  renderLeftButton(context) {
    return new Container(
      margin: EdgeInsets.only(top: 15.0),
      child: new GestureDetector(
        child: new Text(strings.ONLY_SEE,style: new TextStyle(color: Colors.blue,fontSize: 16.0)),
        onTap: (){onlySeeClick(context);},
      ),
    );
    return new Text(strings.ONLY_SEE,style: new TextStyle(color: Colors.blue,fontSize: 16.0));
  }

  renderRightButton(context) {
    return new Container(
      margin: EdgeInsets.only(left: 20.0,top: 15.0),
      child: new GestureDetector(
        child: new Text(strings.AGREE,style: new TextStyle(color: Colors.blue,fontSize: 16.0),),
        onTap: (){agreeClick(context);},
      )
    );
    return new Text(strings.AGREE,style: new TextStyle(color: Colors.blue,fontSize: 16.0),);
  }

  void onlySeeClick(context) {
    Navigator.of(context).pushNamedAndRemoveUntil("/route/mainPage",(route)=>route==null);
  }

  void agreeClick(context) {
    Navigator.of(context).pushNamedAndRemoveUntil("/route/mainPage",(route)=>route==null);
//    Navigator.of(context).pop();
  }
}
