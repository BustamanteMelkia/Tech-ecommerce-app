import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*Reusable elevated button */
ConstrainedBox button({
  VoidCallback? onClick,
  Color? color,
  String text = 'click',
  double? fontSize,
  double? width,
  double? height,
  FontWeight? fontWeight,
}) {
  final ButtonStyle style = ElevatedButton.styleFrom(
    primary: color,
    textStyle: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
  );
  return ConstrainedBox(
    constraints: BoxConstraints.tightFor(width: width, height: height),
    child: ElevatedButton(
      style: style,
      child: Text(text),
      onPressed: onClick,
    ),
  );
}
