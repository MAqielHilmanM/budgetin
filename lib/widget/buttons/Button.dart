import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/material.dart';

class ButtonLong extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final double sizeIcon;
  final VoidCallback onPressed;

  ButtonLong.large(this.text, {
    this.onPressed,
  })  : width = 372.0,
        height = 53.0,
        sizeIcon = 17.78;

  ButtonLong(this.text, {this.height, this.width, this.onPressed, this.sizeIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 372,
      height: 53,
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
            side: BorderSide(color: CustomTheme.colorBlueDark)),
        onPressed: onPressed,
        color: CustomTheme.colorBlueDark,
        textColor: Colors.white,
        child: WidgetText.poppinsMediumWhite24(text),
      ),
    );
  }
}

class ButtonDialog extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final double sizeIcon;
  final VoidCallback onPressed;

  ButtonDialog.large(this.text, {
    this.onPressed,
  })  : width = 372.0,
        height = 53.0,
        sizeIcon = 17.78;

  ButtonDialog(this.text, {this.height, this.width, this.onPressed, this.sizeIcon});

  @override
  Widget build(BuildContext context) {
    var asymetricalRoundedCorners = Container(
      width: 372,
      height: 53,
      padding: EdgeInsets.all(0.0),
      child: Center(child: WidgetText.poppinsRegularWhite20(text)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0)),
          color: CustomTheme.colorBlueDark),
    );

    return Center(
      child: asymetricalRoundedCorners
    );
  }
}

class ButtonBack extends StatelessWidget {
  final double width;
  final double height;
  final double sizeIcon;
  final VoidCallback onPressed;

  ButtonBack.large({
    this.onPressed,
  })  : width = 372.0,
        height = 53.0,
        sizeIcon = 17.78;

  ButtonBack({this.height, this.width, this.onPressed, this.sizeIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 372,
      height: 53,
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
            side: BorderSide(color: CustomTheme.colorBlueDark)),
        onPressed: () {},
        color: CustomTheme.colorBlueDark,
        textColor: Colors.white,
        child: Text("Long Button"),
      ),
    );
  }
}