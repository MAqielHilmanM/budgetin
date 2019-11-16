import 'package:budgetin/utils/Assets.dart';
import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/buttons/WidgetButton.dart';
import 'package:budgetin/widget/cards/WidgetCard.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvestmentListPage extends StatefulWidget {
  InvestmentListPage({Key key}) : super(key: key);

  @override
  _InvestmentListPageState createState() => _InvestmentListPageState();
}

class _InvestmentListPageState extends State<InvestmentListPage> {
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
                            WidgetText.poppinsSemiBoldBlueDark25("Investasi Emas")
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
                        WidgetText.poppinsRegularWhite25(
                          "Total Gold : ",
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          children: <Widget>[
                            WidgetText.poppinsSemiBoldYellow25(
                              "100 ",
                              textAlign: TextAlign.center,
                            ),
                            WidgetText.poppinsRegularYellow25(
                              "Gr",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Image.asset(Assets.iconSave),
                          WidgetText.poppinsRegularWhite20("Save")
                        ],
                      ),
                      Container(
                        child: Divider(
                          color: CustomTheme.colorWhite,
                          thickness: 2,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Image.asset(Assets.iconWithdraw),
                          WidgetText.poppinsRegularWhite20("Widthraw")
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: WidgetText.poppinsRegularBlueDark20("History "),
            )
          ])),
          SliverPadding(
              padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil.instance.setWidth(14.0)),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  WidgetCardInvestment.saving(
                      "Makan", "10 November 2019", "20 Gr"),
                  WidgetCardInvestment.saving(
                      "Makan", "11 November 2019", "20 Gr"),
                  WidgetCardInvestment.saving(
                      "Makan", "12 November 2019", "20 Gr"),
                  WidgetCardInvestment.withdraw(
                      "Rembes", "13 November 2019", "20 Gr"),
                  WidgetCardInvestment.withdraw(
                      "Rembes", "14 November 2019", "20 Gr"),
                  WidgetCardInvestment.withdraw(
                      "Rembes", "15 November 2019", "20 Gr"),
                ]),
              )),
        ],
      ),
    );
  }
}
