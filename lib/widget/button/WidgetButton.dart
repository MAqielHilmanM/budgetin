import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  final double width;
  final double height;
  final double sizeIcon;
  final VoidCallback onPressed;

  WidgetButton.large({
    this.onPressed,
  })  : width = 372.0,
        height = 53.0,
        sizeIcon = 32.0;

  WidgetButton({this.height, this.width, this.onPressed, this.sizeIcon});

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        onTap: onPressed,
        child: new Container(
          width: width,
          height: height,
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(10.0),
            color: const Color(0xFF2CABE2),
          ),
          child: new Icon(
            Icons.add,
            color: Colors.blue,
            size: sizeIcon,
          ),
        ));
  }
}
