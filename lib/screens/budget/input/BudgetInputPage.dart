import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BudgetInputPage extends StatefulWidget {
  BudgetInputPage({Key key}) : super(key: key);

  @override
  _BudgetInputPageState createState() => _BudgetInputPageState();
}

class _BudgetInputPageState extends State<BudgetInputPage> {
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
        body: Container(
          width: ScreenUtil.instance.width,
          height: ScreenUtil.instance.height,
          child: SingleChildScrollView(
              child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(
                    ScreenUtil.instance.setWidth(36.0),
                    ScreenUtil.instance.setHeight(56.0),
                    ScreenUtil.instance.setWidth(33.0),
                    ScreenUtil.instance.setHeight(36.0)),
                width: ScreenUtil.instance.width,
                decoration: BoxDecoration(
                    color: CustomTheme.colorBlueDark,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20))),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        WidgetText.montserratRegularWhite25("Hello, "),
                        WidgetText.montserratBoldWhite25("Bambang!")
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            bottom: ScreenUtil.instance.setHeight(36.0))),
                    WidgetText.montserratMediumWhite25(
                        "Set your budget plan for this month")
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      bottom: ScreenUtil.instance.setHeight(13.0))),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil.instance.setWidth(14.0)),
                color: CustomTheme.colorBlueDark,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil.instance.setWidth(16.0),
                        vertical: ScreenUtil.instance.setHeight(16.0)),
                    width: ScreenUtil.instance.width,
                    child: Column(
                      children: <Widget>[
                        WidgetText.montserratMediumYellow25(
                            "Total budget left"),
                        Row(
                          children: <Widget>[
                            WidgetText.montserratRegularYellow48("Rp. "),
                            WidgetText.montserratSemiBoldYellow48("6,500,000")
                          ],
                        ),
                        WidgetText.montserratSemiBoldGray24("of Rp. 20,000,000")
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      bottom: ScreenUtil.instance.setHeight(16.0))),
              WidgetText.montserratMediumBlack25("Add your budget categories"),
              Padding(
                  padding: EdgeInsets.only(
                      bottom: ScreenUtil.instance.setHeight(19.0))),
              Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  padding: EdgeInsets.all(8.0),
                  children: <Widget>[

                  ],
                ),
              )
            ],
          )),
        ));
  }
}
