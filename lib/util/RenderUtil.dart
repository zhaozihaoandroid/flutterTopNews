import 'package:flutter/material.dart';

class RenderUtil{
  static getColorText(normalText,specialText,normalStyle,specialStyle,clickListener){
    return new Row(
      children: <Widget>[
        new Text(normalText,style: normalStyle,),
        new GestureDetector(
          child: new Text(specialText,style: specialStyle,),
          onTap: clickListener,
        ),

      ],
    );
  }
}