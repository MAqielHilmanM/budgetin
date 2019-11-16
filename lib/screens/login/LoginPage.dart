import 'package:budgetin/screens/register/RegisterPage.dart';
import 'package:budgetin/utils/Assets.dart';
import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/buttons/WidgetButton.dart';
import 'package:budgetin/widget/form/WidgetForm.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            WidgetText.montserratSemiBoldBlack28(
              "Login",
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.only(bottom: ScreenUtil.instance.setHeight(29.0))),
            WidgetForm.email("email", null), //put controller here
            Padding(padding: EdgeInsets.only(bottom: ScreenUtil.instance.setHeight(19.0))),
            WidgetForm.password("password", null), //put controller here
            Padding(padding: EdgeInsets.only(bottom: ScreenUtil.instance.setHeight(36.0))),
            WidgetButton.large("Login"),
            Padding(padding: EdgeInsets.only(bottom: ScreenUtil.instance.setHeight(126.0))),
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
                        builder: (BuildContext context) => RegisterPage())),
                    child: Column(
                      children: <Widget>[
                        WidgetText.montserratRegularBlack14(
                            "Don't have an account?"),
                        WidgetText.montserratRegularBlue14("Register Now"),
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
