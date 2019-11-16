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
  var isBordered = false;

  WidgetForm(this.labelText, this.type, this.controller, {this.isBordered = false});

  WidgetForm.password(this.labelText, this.controller, {this.isBordered = false})
      : type = TextInputType.text,
        isPassword = true;

  WidgetForm.email(this.labelText, this.controller, {this.isBordered = false})
      : type = TextInputType.emailAddress;

  WidgetForm.text(this.labelText, this.controller, {this.isBordered = false}) : type = TextInputType.text;

  WidgetForm.amount(this.labelText, this.controller, {this.isBordered = false})
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

    var decorFullBorder = InputDecoration(
        labelText: labelText,
        labelStyle: new TextStyle(
            fontSize: ScreenUtil.instance.setSp(25.0),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300),
        border: OutlineInputBorder(
            borderSide: BorderSide(
                style: BorderStyle.solid, color: CustomTheme.colorBlueDark)));
    var decorUnderline = new InputDecoration(
        labelText: labelText,
        labelStyle: new TextStyle(
            fontSize: ScreenUtil.instance.setSp(20.0),
            fontFamily: 'Montserrat'));

    return new Container(
      child: new TextFormField(
        autofocus: false,
        obscureText: isPassword,
        controller: controller,
        keyboardType: type,
        decoration: isBordered? decorFullBorder : decorUnderline
      ),
    );
  }
}
