import 'package:budgetin/screens/dashboard/DashboardPage.dart';
import 'package:budgetin/screens/onboarding/onboardingScreen.dart';
import 'package:budgetin/screens/splashscreen/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SplashScreen(),
      routes: <String, WidgetBuilder> {
    '/screens/onboarding': (BuildContext context) => new OnBoardingScreen()
  },
    );
  }
}
