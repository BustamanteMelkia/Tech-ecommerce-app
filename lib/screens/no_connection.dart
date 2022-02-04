import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets//button.dart';

class NoConnection extends StatefulWidget {
  const NoConnection({Key? key}) : super(key: key);

  @override
  State<NoConnection> createState() => _NoConnectionState();
}

class _NoConnectionState extends State<NoConnection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
        // decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(image: AssetImage('assets/images/no_connection.png')),
            const Center(
              child: Text(
                'No Internet Connection',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
                child: Text(
              'Your internet connection is currently not available please check or try again.',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 17),
            )),
            const SizedBox(height: 24),
            button(
              color: const Color(0xFF58C0EA),
              fontSize: 17,
              fontWeight: FontWeight.bold,
              height: 50,
              onClick: () {},
              text: "Try again",
              width: 224,
            )
          ],
        ),
      ),
    );
  }
}
