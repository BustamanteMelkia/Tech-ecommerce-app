import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShippingInfo extends StatelessWidget {
  const ShippingInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
      fontSize: 15,
    );
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        child: Column(children: <Widget>[
          ShippingInfoItem(
            iconData: Icons.person_outline,
            text: 'Rosina Doe',
          ),
          ShippingInfoItem(
            iconData: Icons.location_on_outlined,
            text: '43 Oxford Road M13 4GR Manchester, UK',
          ),
          ShippingInfoItem(
            iconData: Icons.phone_outlined,
            text: '+234 9011039271',
          ),
        ]),
      ),
    );
  }
}

class ShippingInfoItem extends StatelessWidget {
  final TextStyle textStyle = TextStyle(fontSize: 15);
  final String text;
  final IconData? iconData;
  ShippingInfoItem({Key? key, this.text = '', this.iconData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(
            iconData,
            size: 28,
            color: Color(0XFF200E32),
          ),
          Text(
            text,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
