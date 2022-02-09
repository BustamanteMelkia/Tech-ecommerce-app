import 'package:ecommerce_app/widgets/button.dart';
import 'package:ecommerce_app/widgets/credit_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentModal extends StatelessWidget {
  const PaymentModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      padding: EdgeInsets.only(left: 50, right: 50, top: 30),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'Confirm and pay',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Products: 2',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0XFF868686),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            CreditCard(),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'Total',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  '\$ 954',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5956E9),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            LargeButton(
              text: 'Pay now',
              onClick: () {},
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
