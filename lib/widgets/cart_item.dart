import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final double price;
  final String title;
  final String assetPath;
  CartItem({
    Key? key,
    this.price = 0,
    this.title = 'Title of the product',
    this.assetPath = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 14),
      padding: EdgeInsets.all(0),
      minimumSize: const Size(22, 22),
      maximumSize: const Size(22, 22),
      elevation: 0,
      primary: Color(0xFF7DCCEC),
    );

    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 0,
        margin: const EdgeInsets.only(bottom: 15),
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(children: [
              Image(
                image: AssetImage(assetPath),
                width: 80,
                height: 105,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '\u0024${this.price}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0xFF5956E9)),
                  ),
                  Row(
                    children: [
                      const Text('Quantity'),
                      ElevatedButton(
                        style: style,
                        onPressed: () {},
                        child: const Text('-'),
                      ),
                      const Text(
                        '1',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      ElevatedButton(
                        style: style,
                        onPressed: () {},
                        child: const Text('+'),
                      ),
                    ],
                  )
                ],
              )
            ])),
      ),
    );
  }
}
