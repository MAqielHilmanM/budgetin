import 'package:budgetin/screens/budget/input/BudgetInputPage.dart';
import 'package:budgetin/screens/login/LoginPage.dart';
import 'package:budgetin/utils/Assets.dart';
import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/buttons/Button.dart';
import 'package:budgetin/widget/form/WidgetForm.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {


    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;

    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
      backgroundColor: CustomTheme.colorWhite,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
            ScreenUtil.instance.setWidth(17.0),
            ScreenUtil.instance.setHeight(22.0),
            ScreenUtil.instance.setWidth(17.0),
            ScreenUtil.instance.setHeight(25.0)),
        child: Column(
          children: <Widget>[
            Image.asset(Assets.iconAuth),
            WidgetText.montserratSemiBoldBlack28("Register"),
            Padding(padding: EdgeInsets.only(bottom: ScreenUtil.instance.setHeight(28.0))),
            WidgetForm.text("name", null), //put controller here
            Padding(padding: EdgeInsets.only(bottom: ScreenUtil.instance.setHeight(20.0))),
            WidgetForm.email("email", null), //put controller here
            Padding(padding: EdgeInsets.only(bottom: ScreenUtil.instance.setHeight(20.0))),
            WidgetForm.password("password", null), //put controller here
            Padding(padding: EdgeInsets.only(bottom: ScreenUtil.instance.setHeight(20.0))),
            WidgetForm.password("re password", null), //put controller here
            Padding(padding: EdgeInsets.only(bottom: ScreenUtil.instance.setHeight(20.0))),
            WidgetForm.amount("set your amount", null), //put controller here
            Padding(padding: EdgeInsets.only(bottom: ScreenUtil.instance.setHeight(36.0))),
            ButtonLong.large("Next", onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => BudgetInputPage()))),
            Padding(padding: EdgeInsets.only(bottom: ScreenUtil.instance.setHeight(33.0))),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: ScreenUtil.instance.setWidth(58.0),
                    child: Divider(
                      color: CustomTheme.colorGray,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => LoginPage())),
                    child: Column(
                      children: <Widget>[
                        WidgetText.montserratRegularBlack14(
                            "Already have an account?"),
                        WidgetText.montserratRegularBlue14("Login Now"),
                      ],
                    ),
                  ),
                  Container(
                    width: ScreenUtil.instance.setWidth(58.0),
                    child: Divider(
                      color: CustomTheme.colorGray,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
