import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback? onClick;
  final Color? color;
  final String text;
  final double? fontSize;
  final double? width;
  final double? height;

  Button({
    Key? key,
    this.onClick,
    this.color,
    this.text = 'click',
    this.fontSize,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      primary: color,
      textStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
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
}

class MediumButton extends Button {
  final VoidCallback? onClick;
  final String text;

  MediumButton({
    Key? key,
    this.text = 'click',
    this.onClick,
  }) : super(
          key: key,
          color: const Color(0xFF58C0EA),
          fontSize: 17,
          height: 50,
          width: 224,
          onClick: onClick,
          text: text,
        );
}

class LargeButton extends Button {
  final VoidCallback? onClick;
  final String text;

  LargeButton({
    Key? key,
    this.text = 'click',
    this.onClick,
  }) : super(
          key: key,
          color: const Color(0xFF5956E9),
          fontSize: 20,
          height: 70,
          width: 314,
          onClick: onClick,
          text: text,
        );
}
