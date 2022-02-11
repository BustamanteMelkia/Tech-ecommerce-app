import 'package:ecommerce_app/widgets/custominput.dart';
import 'package:ecommerce_app/widgets/custompassword.dart';
import 'package:ecommerce_app/widgets/headline.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  //final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff5956E9),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image(image: AssetImage('assets/images/EllipseMorado.png')),
              ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      begin: Alignment.topCenter,
                      end: FractionalOffset.center,
                      colors: [Colors.black, Colors.transparent],
                    ).createShader(rect);
                  },
                  blendMode: BlendMode.dstIn,
                  child: const Image(
                      image: AssetImage('assets/images/EllipseRosa.png'),
                      fit: BoxFit.contain)),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
            child: Headline(title: 'Welcome back'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 50.0, bottom: 27.0),
                child: const Image(
                  image: AssetImage('assets/images/EllipseMorado.png'),
                ),
              )
            ],
          ),
          Form(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              height: MediaQuery.of(context).size.height * 0.64,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(50.0, 36.0, 50, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Raleway',
                            fontSize: 18.0,
                          ),
                        ),
                        CustomInput(),
                        CustomPassword(),
                        TextButton(
                            onPressed: null,
                            child: const Text('Forgot Password?',
                                style: TextStyle(color: Color(0xff5956E9)))),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, "/");
                            },
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xff5956E9),
                                fixedSize: Size(314.0, 70.0),
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 22),
                                textStyle: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                            child: Text('Log In')),
                        const Center(
                          child: TextButton(
                            onPressed: null,
                            child: Text(
                              'Create account',
                              style: TextStyle(
                                  color: Color(0xff5956E9), fontSize: 17.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
