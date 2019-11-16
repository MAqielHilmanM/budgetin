import 'package:budgetin/screens/login/LoginPage.dart';
import 'package:budgetin/utils/Assets.dart';
import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/buttons/Button.dart';
import 'package:budgetin/widget/form/WidgetForm.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.colorWhite,
      body: ListView(
        padding: EdgeInsets.fromLTRB(17, 22, 17, 25),
        children: <Widget>[
          Image.asset(Assets.iconAuth),
          WidgetText.montserratSemiBoldBlack28("Register"),
          Padding(padding: EdgeInsets.only(bottom: 28)),
          WidgetForm.text("name", null), //put controller here
          Padding(padding: EdgeInsets.only(bottom: 20)),
          WidgetForm.email("email", null), //put controller here
          Padding(padding: EdgeInsets.only(bottom: 20)),
          WidgetForm.password("password", null), //put controller here
          Padding(padding: EdgeInsets.only(bottom: 20)),
          WidgetForm.password("re password", null), //put controller here
          Padding(padding: EdgeInsets.only(bottom: 20)),
          WidgetForm.amount("set your amount", null), //put controller here
          Padding(padding: EdgeInsets.only(bottom: 36)),
          ButtonLong.large("Next"),
          Padding(padding: EdgeInsets.only(bottom: 33)),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 58,
                  child: Divider(
                    color: CustomTheme.colorGray,
                  ),
                ),
                Column(
                  children: <Widget>[
                    WidgetText.montserratRegularBlack14(
                        "Already have an account?"),
                    InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) =>
                          LoginPage()
                      )),
                      child: WidgetText.montserratRegularBlue14("Login Now"),
                    ),
                  ],
                ),
                Container(
                  width: 58,
                  child: Divider(
                    color: CustomTheme.colorGray,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
