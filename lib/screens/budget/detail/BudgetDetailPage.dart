import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/buttons/WidgetButton.dart';
import 'package:budgetin/widget/cards/WidgetCard.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BudgetDetailPage extends StatefulWidget {
  BudgetDetailPage({Key key}) : super(key: key);

  @override
  _BudgetDetailPageState createState() => _BudgetDetailPageState();
}

class _BudgetDetailPageState extends State<BudgetDetailPage> {
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
                            WidgetText.poppinsSemiBoldBlueDark25(
                                "Budget Details")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: CustomTheme.colorBlueDark,
              child: Container(
                height: 200,
                child: Center(
                  child: WidgetText.poppinsMediumWhite35("Food Budget"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: WidgetText.poppinsRegularBlueDark20("Budget Histories"),
            )
          ])),
          SliverPadding(
              padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil.instance.setWidth(14.0)),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  WidgetCardHistory.outcome(
                      "Makan", "10 November 2019", "Rp. 20.000"),
                  WidgetCardHistory.outcome(
                      "Makan", "11 November 2019", "Rp. 20.000"),
                  WidgetCardHistory.outcome(
                      "Makan", "12 November 2019", "Rp. 20.000"),
                  WidgetCardHistory.income(
                      "Rembes", "13 November 2019", "Rp. 20.000"),
                  WidgetCardHistory.income(
                      "Rembes", "14 November 2019", "Rp. 20.000"),
                  WidgetCardHistory.income(
                      "Rembes", "15 November 2019", "Rp. 20.000"),
                ]),
              )),
        ],
      ),
    );
  }
}
