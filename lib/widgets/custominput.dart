import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
        child:Column(
          children: <Widget>[
            Row(
              children: [
                Icon(Icons.email_outlined,size: 24.0,color: Colors.grey,semanticLabel: 'Email icon'),
                Padding(padding: const EdgeInsets.only(left: 10.0),
                  child: Text('Email',
                    style: TextStyle(color: Color(0xff868686),fontSize: 16.0),),
                ),

              ],
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
