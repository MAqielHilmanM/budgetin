import 'package:budgetin/utils/Assets.dart';
import 'package:budgetin/widget/CustomTheme.dart';
import 'package:flutter/material.dart';

class WidgetCard extends StatelessWidget {
  final double width;
  final double height;
  final double sizeIcon;
  final VoidCallback onPressed;

  WidgetCard.large({
    this.onPressed,
  })  : width = 176.0,
        height = 111.0,
        sizeIcon = 17.78;

  WidgetCard({this.height, this.width, this.onPressed, this.sizeIcon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: CustomTheme.colorBlueDark,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
            width: 176,
            height: 111,
            child: Center(
              child: Image.asset(Assets.iconPlusEhite),
            ),
          ),
        ),
      ),
    );
  }
}
