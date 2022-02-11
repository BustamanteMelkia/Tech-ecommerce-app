import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/widgets/empty_state.dart';

class NoConnection extends StatelessWidget {
  const NoConnection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyState(
        path: 'assets/images/no_connection.png',
        onClick: () {},
        title: 'No internet Connection',
        textButton: 'Try Again',
        description:
            'Your internet connection is currently not available please check or try again.',
      ),
    );
  }
}
