import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../CustomTheme.dart';

class WidgetForm extends StatelessWidget {
  final String labelText;
  final TextInputType type;
  final TextEditingController controller;
  final TextStyle textStyle = TextStyle(
      color: CustomTheme.colorGrayLight,
      fontFamily: 'Monserrat',
      fontWeight: FontWeight.w400,
      fontSize: 20.0);
  var isPassword = false;

  WidgetForm(this.labelText, this.type, this.controller);

  WidgetForm.password(this.labelText, this.controller)
      : type = TextInputType.text,
        isPassword = true;

  WidgetForm.email(this.labelText, this.controller)
      : type = TextInputType.emailAddress;

  WidgetForm.text(this.labelText, this.controller)
      : type = TextInputType.text;

  WidgetForm.amount(this.labelText, this.controller)
      : type = TextInputType.number;

  @override
  Widget build(BuildContext context) {

    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;

    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);


    return new Container(
      child: new TextFormField(
        autofocus: false,
        obscureText: isPassword,
        controller: controller,
        keyboardType: type,
        decoration: new InputDecoration(
            labelText: labelText,
            labelStyle:
                new TextStyle(fontSize: ScreenUtil.instance.setSp(20.0), fontFamily: 'Montserrat')),
      ),
    );
  }
}
