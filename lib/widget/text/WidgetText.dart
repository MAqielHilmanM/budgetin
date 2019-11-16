import 'package:flutter/material.dart';

import '../CustomTheme.dart';

class WidgetText extends StatelessWidget {
  final String text;
  final double fontSize;
  final String fontFamily;
  final Color color;
  final FontStyle fontStyle;
  final FontWeight fontWeight;

  WidgetText(this.text, this.fontSize, this.fontFamily, this.color,
      this.fontStyle, this.fontWeight);

  WidgetText.poppinsMediumBlueDark30(this.text)
      : fontSize = 30.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorBlueDark,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w500;

  WidgetText.poppinsLightBlack25(this.text)
      : fontSize = 25.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorBlack,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w300;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      style: TextStyle(
          color: color,
          fontStyle: fontStyle,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          fontSize: fontSize
      ),
    );
  }

}