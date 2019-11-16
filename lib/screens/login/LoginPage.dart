import 'package:budgetin/utils/Assets.dart';
import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/form/WidgetForm.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.colorWhite,
      body: ListView(
        padding: EdgeInsets.fromLTRB(17, 22, 17, 25),
        children: <Widget>[
          Image.asset(Assets.iconAuth),
          WidgetText.montserratSemiBoldBlack28("Login"),
          Padding(padding: EdgeInsets.only(bottom: 29)),
          WidgetForm.email("email", null), //put controller here
          Padding(padding: EdgeInsets.only(bottom: 19)),
          WidgetForm.password("password", null), //put controller here
          Padding(padding: EdgeInsets.only(bottom: 10)),
          WidgetText.montserratMediumGrayLight18("forgot password"),
          Padding(padding: EdgeInsets.only(bottom: 36)),

        ],
      ),
    );
  }
}
