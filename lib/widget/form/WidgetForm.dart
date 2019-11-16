import 'package:flutter/material.dart';

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

  WidgetForm.username(this.labelText, this.controller)
      : type = TextInputType.text;

  WidgetForm.amount(this.labelText, this.controller)
      : type = TextInputType.number;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TextFormField(
        autofocus: true,
        obscureText: isPassword,
        controller: controller,
        keyboardType: type,
        decoration: new InputDecoration(
            labelText: labelText,
            labelStyle:
                new TextStyle(fontSize: 20.0, fontFamily: 'Montserrat')),
      ),
    );
  }
}
