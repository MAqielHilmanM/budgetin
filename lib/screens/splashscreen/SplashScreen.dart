import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/screens/onboarding');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
          child: new Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Center(child: new Image.asset('assets/images/ic_logo/ic_logo.png', height: 200, width: 200,)),
          ],
          ),
        ),
      ),
    );
  }
}
