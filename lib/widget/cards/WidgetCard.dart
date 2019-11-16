import 'package:budgetin/utils/Assets.dart';
import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;

    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

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

class WidgetCardBudget extends StatelessWidget {
  final String total;
  final String used;
  final String name;

  const WidgetCardBudget({Key key, this.total, this.used, this.name})
      : super(key: key);

  const WidgetCardBudget.input(this.total, this.name) : used = null;

  const WidgetCardBudget.filled(this.name, this.total, this.used);

  const WidgetCardBudget.empty()
      : name = null,
        total = null,
        used = null;

  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;

    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    var emptyCard = Card(
      color: CustomTheme.colorWhite,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: CustomTheme.colorBlueDark),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Image.asset(Assets.iconPlusBlue),
      ),
    );

    var filledCard = Card(
      color: CustomTheme.colorBlue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(
                ScreenUtil.instance.setWidth(8.0)
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
              color: CustomTheme.colorBlueDark,
            ),
            width: ScreenUtil.instance.width,
            child: WidgetText.poppinsMediumWhite20(
              name,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(padding: EdgeInsets.only(
              top: ScreenUtil.instance.setHeight(8.0))),
          Container(
            child: Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(
                    right: ScreenUtil.instance.setWidth(4.0))),
                WidgetText.poppinsMediumWhite16("Used"),
                Padding(padding: EdgeInsets.only(
                    right: ScreenUtil.instance.setWidth(8.0))),
                WidgetText.poppinsMediumYellow16("Rp. "),
                WidgetText.poppinsBoldYellow16(total)
              ],
            ),
          ),
          Container(
            width: ScreenUtil.instance.width,
            child: Divider(
              color: CustomTheme.colorWhite,
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(
                    right: ScreenUtil.instance.setWidth(4.0))),
                WidgetText.poppinsMediumWhite16("Total"),
                Padding(padding: EdgeInsets.only(
                    right: ScreenUtil.instance.setWidth(8.0))),
                WidgetText.poppinsMediumYellow16("Rp. "),
                WidgetText.poppinsBoldYellow16(total)
              ],
            ),
          )
        ],
      ),
    );

    return new Container(
      child: name == null? emptyCard : filledCard
    );
  }
}
