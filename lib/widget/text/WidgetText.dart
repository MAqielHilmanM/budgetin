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

  WidgetText.poppinsSemiBoldBlack18(this.text)
      : fontSize = 18.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorBlack,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w600;

  WidgetText.poppinsMediumBlack25(this.text)
      : fontSize = 25.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorBlack,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w500;

  WidgetText.poppinsMediumGray25(this.text)
      : fontSize = 25.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorGray,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w500;

  WidgetText.poppinsSemiBoldBlueDark20(this.text)
      : fontSize = 20.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorBlueDark,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w600;

  WidgetText.poppinsMediumBlue24(this.text)
      : fontSize = 24.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorBlue,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w500;

  WidgetText.poppinsMediumGrayDark24(this.text)
      : fontSize = 24.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorGrayDark,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w500;

  WidgetText.poppinsLightBlack18(this.text)
      : fontSize = 18.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorBlack,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w300;

  WidgetText.poppinsMediumGrayExtra16(this.text)
      : fontSize = 16.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorGrayExtra,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w500;

  WidgetText.poppinsLightGrayDark18(this.text)
      : fontSize = 18.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorGrayDark,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w300;

  WidgetText.poppinsLightRed18(this.text)
      : fontSize = 18.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorRed,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w300;

  WidgetText.poppinsLightGreen18(this.text)
      : fontSize = 18.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorGreenLight,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w300;

  WidgetText.poppinsSemiBoldYellow25(this.text)
      : fontSize = 25.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorYellow,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w600;

  WidgetText.poppinsRegularYellow25(this.text)
      : fontSize = 25.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorYellow,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w400;

  WidgetText.poppinsRegularBlueDark20(this.text)
      : fontSize = 20.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorBlueDark,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w400;

  WidgetText.poppinsBoldYellow16(this.text)
      : fontSize = 16.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorYellow,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w700;

  WidgetText.poppinsMediumYellow16(this.text)
      : fontSize = 16.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorYellow,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w500;

  WidgetText.poppinsSemiBoldBlueDark25(this.text)
      : fontSize = 25.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorBlueDark,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w600;

  WidgetText.poppinsLightGrayLight25(this.text)
      : fontSize = 25.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorGrayLight,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w300;

  WidgetText.poppinsMediumWhite25(this.text)
      : fontSize = 25.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorWhite,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w500;

  WidgetText.poppinsRegularWhite25(this.text)
      : fontSize = 25.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorWhite,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w400;

  WidgetText.poppinsMediumWhite35(this.text)
      : fontSize = 35.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorWhite,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w500;

  WidgetText.poppinsRegularWhite20(this.text)
      : fontSize = 20.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorWhite,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w400;

  WidgetText.poppinsMediumWhite20(this.text)
      : fontSize = 20.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorWhite,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w500;

  WidgetText.poppinsMediumWhite16(this.text)
      : fontSize = 16.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorWhite,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w500;

  WidgetText.poppinsMediumWhite24(this.text)
      : fontSize = 24.0,
        fontFamily = "Poppins",
        color = CustomTheme.colorWhite,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w500;

  WidgetText.montserratSemiBoldBlack28(this.text)
      : fontSize = 28.0,
        fontFamily = "Montserrat",
        color = CustomTheme.colorBlack,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w600;

  WidgetText.montserratRegularBlack25(this.text)
      : fontSize = 25.0,
        fontFamily = "Montserrat",
        color = CustomTheme.colorBlack,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w500;

  WidgetText.montserratBoldBlack25(this.text)
      : fontSize = 25.0,
        fontFamily = "Montserrat",
        color = CustomTheme.colorBlack,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w700;

  WidgetText.montserratMediumGrayLight18(this.text)
      : fontSize = 18.0,
        fontFamily = "Montserrat",
        color = CustomTheme.colorGrayLight,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w500;

  WidgetText.montserratRegularBlack14(this.text)
      : fontSize = 14.0,
        fontFamily = "Montserrat",
        color = CustomTheme.colorBlack,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w400;

  WidgetText.montserratRegularBlue14(this.text)
      : fontSize = 14.0,
        fontFamily = "Montserrat",
        color = CustomTheme.colorBlue,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w400;

  WidgetText.montserratMediumGrayLight20(this.text)
      : fontSize = 20.0,
        fontFamily = "Montserrat",
        color = CustomTheme.colorGrayLight,
        fontStyle = FontStyle.normal,
        fontWeight = FontWeight.w500;

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