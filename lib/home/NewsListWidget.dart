import 'package:flutter/material.dart';

class NewsListWidget extends StatelessWidget{
  final int type;

  NewsListWidget(this.type);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar:new AppBar(
        centerTitle:true,
        title: new Text("NewsListWidget"+'{$type}'),
      ),
      body: new Text("NewsListWidget"),
    );
  }

}