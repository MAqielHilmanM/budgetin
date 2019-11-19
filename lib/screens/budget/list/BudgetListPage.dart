import 'package:budgetin/screens/budget/form/BudgetFormDialog.dart';
import 'package:budgetin/utils/Assets.dart';
import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/buttons/WidgetButton.dart';
import 'package:budgetin/widget/cards/WidgetCard.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BudgetListPage extends StatefulWidget {

  @override
  _BudgetListPageState createState() => _BudgetListPageState();
}

class _BudgetListPageState extends State<BudgetListPage> {
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
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 15, right: 15),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ButtonBack(),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 47),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            WidgetText.poppinsSemiBoldBlueDark25("Your Budget")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              color: CustomTheme.colorBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(ScreenUtil.instance.setWidth(8.0)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      color: CustomTheme.colorBlueDark,
                    ),
                    width: ScreenUtil.instance.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          child: Image.asset(Assets.iconArrowLeft),
                        ),
                        WidgetText.poppinsMediumWhite20(
                          "January",
                          textAlign: TextAlign.center,
                        ),
                        InkWell(
                          child: Image.asset(Assets.iconArrowRight),
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          top: ScreenUtil.instance.setHeight(8.0))),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              left: ScreenUtil.instance.setWidth(8.0)),
                          child: WidgetText.poppinsMediumWhite25("Total"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: ScreenUtil.instance.setWidth(8.0)),
                          child: Row(
                            children: <Widget>[
                              WidgetText.poppinsRegularYellow25("Rp. "),
                              WidgetText.poppinsSemiBoldYellow25("20.000.000")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              left: ScreenUtil.instance.setWidth(8.0)),
                          child:
                              WidgetText.poppinsMediumWhite25("Balance Left"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: ScreenUtil.instance.setWidth(8.0)),
                          child: Row(
                            children: <Widget>[
                              WidgetText.poppinsRegularYellow25("Rp. "),
                              WidgetText.poppinsSemiBoldYellow25("5.000.000")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: WidgetText.poppinsRegularBlueDark20("Budget Categories"),
            )
          ])),
          SliverPadding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil.instance.setWidth(14.0)),
            sliver: SliverGrid(
                delegate: SliverChildListDelegate([
                  WidgetCardBudget.filled("makan", "20.000.000", "2.000.000"),
                  WidgetCardBudget.filled("main", "20.000.000", "2.000.000"),
                  WidgetCardBudget.filled("jalan", "20.000.000", "2.000.000"),
                  WidgetCardBudget.filled("dating", "20.000.000", "2.000.000"),
                  WidgetCardBudget.filled("beli truk", "20.000.000", "2.000.000"),
                  WidgetCardBudget.filled("beli mobil", "20.000.000", "2.000.000"),
                  InkWell(
                    onTap: () {
                      // showDialog(
                      //     context: context,
                      //     builder: (BuildContext context) =>
                      //         BudgetFormDialog());
                      print("woi");
                    },
                    child: WidgetCard.large(),
                  )
                ]),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.3,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2)),
          ),
        ],
      ),
    );
  }
}
