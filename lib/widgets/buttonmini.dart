import 'package:flutter/material.dart';

class ButtonMini extends StatelessWidget {
  final String text;
  final int color;
  const ButtonMini({Key? key,this.text='Sky Blue',this.color=0xff7485c1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child:  ElevatedButton(
          style: ElevatedButton.styleFrom(shadowColor: Colors.black,elevation: 4.0,primary: Colors.white,onPrimary: Colors.black),
          onPressed: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 12.0,
                height: 12.0,
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:Color(color)
                ),),
              Text(text,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w700,fontFamily: 'Raleway'),),
            ],
          )

      )
    )
     ;
  }
}
