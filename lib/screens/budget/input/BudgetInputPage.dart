import 'package:budgetin/screens/budget/form/BudgetFormDialog.dart';
import 'package:budgetin/screens/dashboard/DashboardPage.dart';
import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/buttons/WidgetButton.dart';
import 'package:budgetin/widget/cards/WidgetCard.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BudgetInputPage extends StatefulWidget {
  BudgetInputPage({Key key}) : super(key: key);

  @override
  _BudgetInputPageState createState() => _BudgetInputPageState();
}

class _BudgetInputPageState extends State<BudgetInputPage> {

  void _onLoading() {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          height: 100,
          width: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: new CircularProgressIndicator(),
              ),
              new Text("Loading, please wait", style: TextStyle(fontFamily: "Montserrat", color: CustomTheme.colorBlue),),
            ],
          ),
        ),
      );
    },
  );
  new Future.delayed(new Duration(seconds: 3), () {
    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => DashboardPage()));
    //Navigator.of(context).pop();
    print("woii");
  });
}

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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
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
                      WidgetText.montserratMediumYellow25("Total budget left"),
                      Row(
                        children: <Widget>[
                          WidgetText.montserratRegularYellow48("Rp. "),
                          WidgetText.montserratSemiBoldYellow48("2,000,000")
                        ],
                      ),
                      WidgetText.montserratSemiBoldGray24("of Rp. 5,000,000")
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil.instance.setWidth(16.0),
                  vertical: ScreenUtil.instance.setHeight(16.0)),
              child: WidgetText.montserratMediumBlack25(
                  "Add your budget categories"),
            )
          ])),
          SliverPadding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil.instance.setWidth(14.0)),
            sliver: SliverGrid(
                delegate: SliverChildListDelegate([
                  WidgetCardBudget.input("3.000.000", "makan"),
                  InkWell(
                    onTap: () {
                      showDialog(context: context,
                      builder: (BuildContext context)=> BudgetFormDialog());
                    },
                    child: WidgetCardBudget.empty(),
                  )
                ]),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.3,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2)),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil.instance.setWidth(16)),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                    padding: EdgeInsets.only(
                        bottom: ScreenUtil.instance.setHeight(21.0))),
                WidgetButton.large("Done", onPressed: ()=> _onLoading()),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: ScreenUtil.instance.setHeight(21.0))),
                WidgetButton.largeOutline("Skip", onPressed: ()=> _onLoading()),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: ScreenUtil.instance.setHeight(21.0))),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
