import 'package:budgetin/screens/budget/form/BudgetFormDialog.dart';
import 'package:budgetin/screens/budget/form/BudgetFormDialog.dart';
import 'package:budgetin/screens/budget/input/BudgetInputPage.dart';
import 'package:budgetin/screens/dashboard/DashboardFormDialog.dart';
import 'package:budgetin/screens/history/InOutHistoryPage.dart';
import 'package:budgetin/screens/investment/formDialog/InvestmentFormDialog.dart';
import 'package:budgetin/screens/login/LoginPage.dart';
import 'package:budgetin/screens/onboarding/onboardingScreen.dart';
import 'package:budgetin/screens/splashscreen/SplashScreen.dart';
import 'package:budgetin/widget/form/WidgetForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() { 
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white, //top bar color
      statusBarIconBrightness: Brightness.dark, //top bar icons
      systemNavigationBarColor: Colors.white, //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark, //bottom bar icons
    )
  );
  runApp(MyApp());
}
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
      home: new AddInvestmentFormDialog(),
      routes: <String, WidgetBuilder>{
        '/screens/onboarding': (BuildContext context) => AddInvestmentFormDialog(),
      },
    );
  }
}

