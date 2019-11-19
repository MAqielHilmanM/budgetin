import 'package:budgetin/screens/budget/detail/BudgetDetailPage.dart';
import 'package:budgetin/screens/budget/list/BudgetListPage.dart';
import 'package:budgetin/screens/dashboard/DashboardFormDialog.dart';
import 'package:budgetin/screens/investment/list/InvestmentListPage.dart';
import 'package:budgetin/screens/login/LoginPage.dart';
import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/cards/WidgetCard.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:async';
import 'dart:math';


class DashboardPage extends StatefulWidget {

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>  {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {  
    return new Scaffold(
      key: _scaffoldKey,
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate([
            Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top : 25.0, left: 15.0, right: 15),
                  child: Container(
                    child: Stack(
                       children: <Widget>[
                        InkWell(
                          onTap: () =>
                            _scaffoldKey.currentState.openDrawer(),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset("assets/images/ic_drawer/ic_drawer.png",)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical : 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              WidgetText.montserratRegularBlack20("Hello, "),
                              WidgetText.montserratBoldBlack20("Bambang!")
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              image: DecorationImage(image: AssetImage("assets/images/download.jpeg"), fit: BoxFit.cover),
                              borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 68,
                  color: CustomTheme.colorWhite,
                  child: Padding(
                    padding: const EdgeInsets.only(top : 10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            WidgetText.montserratBoldBlack20("Total Assets"),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom : 20.0),
                                  child: WidgetText.montserratRegularBlue18("Rp "),
                                ),
                                WidgetText.montserratSemiBoldBlue20("3,000,000"),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          color: CustomTheme.colorGray,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        WidgetText.montserratRegularBlack20("Statistics"),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: DefaultTabController(
                        length: 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                constraints: BoxConstraints.expand(height: 60),
                                child: TabBar(
                                  labelStyle: TextStyle(color: Colors.grey, fontFamily: "Montserrat", fontSize: 12, fontWeight: FontWeight.w700),
                                  isScrollable: false,
                                  unselectedLabelColor: Colors.grey[400],
                                  labelColor: Colors.white,
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  indicator: new BubbleTabIndicator(
                                    indicatorRadius: 10,
                                    indicatorHeight: 40.0,
                                    indicatorColor: Colors.blueAccent,
                                    tabBarIndicatorSize: TabBarIndicatorSize.tab,
                                  ),
                                  tabs: [
                                    Tab(text: "Daily"),
                                    Tab(text: "Weekly"),
                                    Tab(text: "Monthly"),
                                    Tab(text: "Yearly"),
                                  ]),
                              ),
                            Expanded(
                              child: Container(
                                child: TabBarView(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: CustomTheme.colorBlue,
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: BarChartSample1()
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF4242AF),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: BarChartSample2(),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF4242AF),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: BarChartSample3(),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF4242AF),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: BarChartSample4(),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top : 10, right: 15),
                child: Divider(
                            color: CustomTheme.colorGray,
                          ),
              ),
              Padding(
                padding: const EdgeInsets.only(left : 15.0, top : 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      WidgetText.montserratRegularBlack20("Budgets"),
                    ],
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
      SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.3,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2),
        delegate: SliverChildListDelegate([
          InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => BudgetDetailPage())),
          child: 
          WidgetCardBudget.filled("Makan","20.000.000", "13.000.000")),
          WidgetCardBudget.filled("Dating","10.000.000", "1.500.000"),
          WidgetCardBudget.filled("Main","2.250.000", "1.300.000"),
          WidgetCardBudget.filled("Beli Mobil","400.000.000", "130.000.000"),
          WidgetCardBudget.filled("Beli Truk","20.000.000", "15.000.000"),
          WidgetCardBudget.filled("Keluar negeri","26.000.000", "11.000.000"),
        ]),
      )
      ])
    ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              color: CustomTheme.colorBlueDark,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              image: DecorationImage(image: AssetImage("assets/images/download.jpeg"), fit: BoxFit.cover),
                              borderRadius: BorderRadius.all(Radius.circular(40))
                            ),
                          ),
                  Padding(
                    padding: const EdgeInsets.only(top : 15),
                    child: WidgetText.montserratBoldWhite20("Bambang Yudiyanto"),
                  )
                ],
              ),
            ),
            ListTile(
              title: WidgetText.montserratSemiBoldBlue20("Dashboard"),
              leading: Image.asset("assets/images/ic_menu_home/ic_menu_home.png"),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            Divider(
              color: CustomTheme.colorBlueDark
            ),
            ListTile(
              title: WidgetText.montserratSemiBoldBlue20("In / Out History"),
              leading: Image.asset("assets/images/ic_menu_transaction/ic_menu_transaction.png"),
              onTap: (){},
            ),
            Divider(
              color: CustomTheme.colorBlueDark
            ),
            ListTile(
              title: WidgetText.montserratSemiBoldBlue20("Budgets"),
              leading: Image.asset("assets/images/ic_menu_budget/ic_menu_budget.png"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => 
                  BudgetListPage()
                ));
              },
            ),
            Divider(
              color: CustomTheme.colorBlueDark
            ),
            new ExpansionTile(
              
              title: WidgetText.montserratSemiBoldBlue20("Investment"),
              leading: Image.asset("assets/images/ic_menu_invest/ic_menu_invest.png"),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: new ListTile(
                    leading: Text(""),
                    title:WidgetText.montserratSemiBoldBlue20("Gold"),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => 
                      InvestmentListPage()
                    ))
                  ),
                ),
              ],
            ),
            Divider(
              color: CustomTheme.colorBlueDark
            ),
            ListTile(
              title: WidgetText.montserratSemiBoldRed20("Log Out"),
              leading: Image.asset("assets/images/ic_menu_logout/ic_menu_logout.png"),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => 
                      LoginPage()
                    ))
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => DashboardFormDialog()));
        },
        backgroundColor: CustomTheme.colorYellow,
        child: Image.asset("assets/images/ic_plus_blue/ic_plus_blue.png", height: 20, width: 20,)
      ),
    );
  }
}

class BarChartSample1 extends StatefulWidget {
  final List<Color> availableColors = [
    Colors.purpleAccent,
    Colors.yellow,
    Colors.lightBlue,
    Colors.orange,
    Colors.pink,
    Colors.redAccent,
  ];

  @override
  State<StatefulWidget> createState() => BarChartSample1State();
}

class BarChartSample1State extends State<BarChartSample1> {
  final Color barBackgroundColor = CustomTheme.colorBlueDark;
  final Duration animDuration = Duration(milliseconds: 250);

  int touchedIndex;

  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: CustomTheme.colorBlue,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  'Daily',
                  style: TextStyle(
                      color: Colors.yellow, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Outcome Graphics',
                  style: TextStyle(
                      color: Colors.yellow, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 38,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: BarChart(isPlaying ? randomData() : mainBarData(),
                      swapAnimationDuration: animDuration,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color barColor = Colors.white,
    double width = 22,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(x: x, barRods: [
      BarChartRodData(
        y: isTouched ? y + 1 : y,
        color: isTouched ? Colors.yellow : barColor,
        width: width,
        isRound: true,
        backDrawRodData: BackgroundBarChartRodData(
          show: true,
          y: 20,
          color: CustomTheme.colorBlueDark,
        ),
      ),
    ], showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 10, isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, 6.5, isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, 5, isTouched: i == touchedIndex);
          case 3:
            return makeGroupData(3, 7.5, isTouched: i == touchedIndex);
          case 4:
            return makeGroupData(4, 9, isTouched: i == touchedIndex);
          case 5:
            return makeGroupData(5, 11.5, isTouched: i == touchedIndex);
          case 6:
            return makeGroupData(6, 6.5, isTouched: i == touchedIndex);
          default:
            return null;
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.blueGrey,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                  weekDay = '11:00';
                  break;
                case 1:
                  weekDay = '12:00';
                  break;
                case 2:
                  weekDay = '13:00';
                  break;
                case 3:
                  weekDay = '14:00';
                  break;
                case 4:
                  weekDay = '15:00';
                  break;
                case 5:
                  weekDay = '16:00';
                  break;
                case 6:
                  weekDay = '17:00';
                  break;
              }
              return BarTooltipItem(weekDay + '\n' + (rod.y - 1).toString(),
                  TextStyle(color: Colors.yellow));
            }),
        touchCallback: (barTouchResponse) {
          setState(() {
            if (barTouchResponse.spot != null &&
              barTouchResponse.touchInput is! FlPanEnd &&
              barTouchResponse.touchInput is! FlLongPressEnd) {
              touchedIndex = barTouchResponse.spot.touchedBarGroupIndex;
            } else {
              touchedIndex = -1;
            }
          });
        }
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
            showTitles: true,
            textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
            margin: 16,
            getTitles: (double value) {
              switch (value.toInt()) {
                case 0:
                  return '13:00';
                case 1:
                  return '14:00';
                case 2:
                  return '15:00';
                case 3:
                  return '16:00';
                case 4:
                  return '17:00';
                case 5:
                  return '18:00';
                case 6:
                  return '19:00';
                default:
                  return '';
              }
            }),
        leftTitles: const SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
    );
  }

  BarChartData randomData() {
    return BarChartData(
      barTouchData: const BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
            showTitles: true,
            textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
            margin: 16,
            getTitles: (double value) {
              switch (value.toInt()) {
                case 0:
                  return '13:00';
                case 1:
                  return '14:00';
                case 2:
                  return '15:00';
                case 3:
                  return '16:00';
                case 4:
                  return '17:00';
                case 5:
                  return '18:00';
                case 6:
                  return '19:00';
                default:
                  return '';
              }
            }),
        leftTitles: const SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 1:
            return makeGroupData(1, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 2:
            return makeGroupData(2, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 3:
            return makeGroupData(3, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 4:
            return makeGroupData(4, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 5:
            return makeGroupData(5, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 6:
            return makeGroupData(6, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          default:
            return null;
        }
      }),
    );
  }

  Future<dynamic> refreshState() async {
    setState(() {});
    await Future<dynamic>.delayed(animDuration + Duration(milliseconds: 50));
    if (isPlaying) {
      refreshState();
    }
  }
}

class BarChartSample2 extends StatefulWidget {
  final List<Color> availableColors = [
    Colors.purpleAccent,
    Colors.yellow,
    Colors.lightBlue,
    Colors.orange,
    Colors.pink,
    Colors.redAccent,
  ];

  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}

class BarChartSample2State extends State<BarChartSample2> {
  final Color barBackgroundColor = CustomTheme.colorBlueDark;
  final Duration animDuration = Duration(milliseconds: 250);

  int touchedIndex;

  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: CustomTheme.colorBlue,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  'Weekly',
                  style: TextStyle(
                      color: Colors.yellow, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Outcome Graphics',
                  style: TextStyle(
                      color: Colors.yellow, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 38,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: BarChart(isPlaying ? randomData() : mainBarData(),
                      swapAnimationDuration: animDuration,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color barColor = Colors.white,
    double width = 22,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(x: x, barRods: [
      BarChartRodData(
        y: isTouched ? y + 1 : y,
        color: isTouched ? Colors.yellow : barColor,
        width: width,
        isRound: true,
        backDrawRodData: BackgroundBarChartRodData(
          show: true,
          y: 20,
          color: CustomTheme.colorBlueDark,
        ),
      ),
    ], showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 10, isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, 6.5, isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, 5, isTouched: i == touchedIndex);
          case 3:
            return makeGroupData(3, 7.5, isTouched: i == touchedIndex);
          case 4:
            return makeGroupData(4, 9, isTouched: i == touchedIndex);
          case 5:
            return makeGroupData(5, 11.5, isTouched: i == touchedIndex);
          case 6:
            return makeGroupData(6, 6.5, isTouched: i == touchedIndex);
          default:
            return null;
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.blueGrey,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                  weekDay = 'Monday';
                  break;
                case 1:
                  weekDay = 'Tuesday';
                  break;
                case 2:
                  weekDay = 'Wednesday';
                  break;
                case 3:
                  weekDay = 'Thursday';
                  break;
                case 4:
                  weekDay = 'Friday';
                  break;
                case 5:
                  weekDay = 'Saturday';
                  break;
                case 6:
                  weekDay = 'Sunday';
                  break;
              }
              return BarTooltipItem(weekDay + '\n' + (rod.y - 1).toString(),
                  TextStyle(color: Colors.yellow));
            }),
        touchCallback: (barTouchResponse) {
          setState(() {
            if (barTouchResponse.spot != null &&
              barTouchResponse.touchInput is! FlPanEnd &&
              barTouchResponse.touchInput is! FlLongPressEnd) {
              touchedIndex = barTouchResponse.spot.touchedBarGroupIndex;
            } else {
              touchedIndex = -1;
            }
          });
        }
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
            showTitles: true,
            textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
            margin: 16,
            getTitles: (double value) {
              switch (value.toInt()) {
                case 0:
                  return 'M';
                case 1:
                  return 'T';
                case 2:
                  return 'W';
                case 3:
                  return 'T';
                case 4:
                  return 'F';
                case 5:
                  return 'S';
                case 6:
                  return 'S';
                default:
                  return '';
              }
            }),
        leftTitles: const SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
    );
  }

  BarChartData randomData() {
    return BarChartData(
      barTouchData: const BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
            showTitles: true,
            textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
            margin: 16,
            getTitles: (double value) {
              switch (value.toInt()) {
                case 0:
                  return 'M';
                case 1:
                  return 'T';
                case 2:
                  return 'W';
                case 3:
                  return 'T';
                case 4:
                  return 'F';
                case 5:
                  return 'S';
                case 6:
                  return 'S';
                default:
                  return '';
              }
            }),
        leftTitles: const SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 1:
            return makeGroupData(1, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 2:
            return makeGroupData(2, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 3:
            return makeGroupData(3, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 4:
            return makeGroupData(4, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 5:
            return makeGroupData(5, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 6:
            return makeGroupData(6, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          default:
            return null;
        }
      }),
    );
  }

  Future<dynamic> refreshState() async {
    setState(() {});
    await Future<dynamic>.delayed(animDuration + Duration(milliseconds: 50));
    if (isPlaying) {
      refreshState();
    }
  }
}

class BarChartSample3 extends StatefulWidget {
  final List<Color> availableColors = [
    Colors.purpleAccent,
    Colors.yellow,
    Colors.lightBlue,
    Colors.orange,
    Colors.pink,
    Colors.redAccent,
  ];

  @override
  State<StatefulWidget> createState() => BarChartSample3State();
}

class BarChartSample3State extends State<BarChartSample3> {
  final Color barBackgroundColor = CustomTheme.colorBlueDark;
  final Duration animDuration = Duration(milliseconds: 250);

  int touchedIndex;

  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: CustomTheme.colorBlue,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  'Monthly',
                  style: TextStyle(
                      color: Colors.yellow, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Outcome Graphics',
                  style: TextStyle(
                      color: Colors.yellow, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 38,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: BarChart(isPlaying ? randomData() : mainBarData(),
                      swapAnimationDuration: animDuration,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color barColor = Colors.white,
    double width = 22,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(x: x, barRods: [
      BarChartRodData(
        y: isTouched ? y + 1 : y,
        color: isTouched ? Colors.yellow : barColor,
        width: width,
        isRound: true,
        backDrawRodData: BackgroundBarChartRodData(
          show: true,
          y: 20,
          color: CustomTheme.colorBlueDark,
        ),
      ),
    ], showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 10, isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, 6.5, isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, 5, isTouched: i == touchedIndex);
          case 3:
            return makeGroupData(3, 7.5, isTouched: i == touchedIndex);
          case 4:
            return makeGroupData(4, 9, isTouched: i == touchedIndex);
          case 5:
            return makeGroupData(5, 11.5, isTouched: i == touchedIndex);
          case 6:
            return makeGroupData(6, 6.5, isTouched: i == touchedIndex);
          default:
            return null;
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.blueGrey,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                  weekDay = 'January';
                  break;
                case 1:
                  weekDay = 'February';
                  break;
                case 2:
                  weekDay = 'March';
                  break;
                case 3:
                  weekDay = 'April';
                  break;
                case 4:
                  weekDay = 'Mei';
                  break;
                case 5:
                  weekDay = 'June';
                  break;
                case 6:
                  weekDay = 'July';
                  break;
              }
              return BarTooltipItem(weekDay + '\n' + (rod.y - 1).toString(),
                  TextStyle(color: Colors.yellow));
            }),
        touchCallback: (barTouchResponse) {
          setState(() {
            if (barTouchResponse.spot != null &&
              barTouchResponse.touchInput is! FlPanEnd &&
              barTouchResponse.touchInput is! FlLongPressEnd) {
              touchedIndex = barTouchResponse.spot.touchedBarGroupIndex;
            } else {
              touchedIndex = -1;
            }
          });
        }
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
            showTitles: true,
            textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
            margin: 16,
            getTitles: (double value) {
              switch (value.toInt()) {
                case 0:
                  return 'Jan';
                case 1:
                  return 'Feb';
                case 2:
                  return 'Mar';
                case 3:
                  return 'Apr';
                case 4:
                  return 'May';
                case 5:
                  return 'Jun';
                case 6:
                  return 'Jul';
                default:
                  return '';
              }
            }),
        leftTitles: const SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
    );
  }

  BarChartData randomData() {
    return BarChartData(
      barTouchData: const BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
            showTitles: true,
            textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
            margin: 16,
            getTitles: (double value) {
              switch (value.toInt()) {
                case 0:
                  return 'Jan';
                case 1:
                  return 'Feb';
                case 2:
                  return 'Mar';
                case 3:
                  return 'Apr';
                case 4:
                  return 'May';
                case 5:
                  return 'Jun';
                case 6:
                  return 'Jul';
                default:
                  return '';
              }
            }),
        leftTitles: const SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 1:
            return makeGroupData(1, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 2:
            return makeGroupData(2, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 3:
            return makeGroupData(3, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 4:
            return makeGroupData(4, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 5:
            return makeGroupData(5, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 6:
            return makeGroupData(6, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          default:
            return null;
        }
      }),
    );
  }

  Future<dynamic> refreshState() async {
    setState(() {});
    await Future<dynamic>.delayed(animDuration + Duration(milliseconds: 50));
    if (isPlaying) {
      refreshState();
    }
  }
}

class BarChartSample4 extends StatefulWidget {
  final List<Color> availableColors = [
    Colors.purpleAccent,
    Colors.yellow,
    Colors.lightBlue,
    Colors.orange,
    Colors.pink,
    Colors.redAccent,
  ];

  @override
  State<StatefulWidget> createState() => BarChartSample4State();
}

class BarChartSample4State extends State<BarChartSample4> {
  final Color barBackgroundColor = CustomTheme.colorBlueDark;
  final Duration animDuration = Duration(milliseconds: 250);

  int touchedIndex;

  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: CustomTheme.colorBlue,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  'Yearly',
                  style: TextStyle(
                      color: Colors.yellow, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Outcome Graphics',
                  style: TextStyle(
                      color: Colors.yellow, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 38,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: BarChart(isPlaying ? randomData() : mainBarData(),
                      swapAnimationDuration: animDuration,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color barColor = Colors.white,
    double width = 22,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(x: x, barRods: [
      BarChartRodData(
        y: isTouched ? y + 1 : y,
        color: isTouched ? Colors.yellow : barColor,
        width: width,
        isRound: true,
        backDrawRodData: BackgroundBarChartRodData(
          show: true,
          y: 20,
          color: CustomTheme.colorBlueDark,
        ),
      ),
    ], showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 10, isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, 6.5, isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, 5, isTouched: i == touchedIndex);
          case 3:
            return makeGroupData(3, 7.5, isTouched: i == touchedIndex);
          case 4:
            return makeGroupData(4, 9, isTouched: i == touchedIndex);
          case 5:
            return makeGroupData(5, 11.5, isTouched: i == touchedIndex);
          case 6:
            return makeGroupData(6, 6.5, isTouched: i == touchedIndex);
          default:
            return null;
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.blueGrey,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                  weekDay = '2013';
                  break;
                case 1:
                  weekDay = '2014';
                  break;
                case 2:
                  weekDay = '2015';
                  break;
                case 3:
                  weekDay = '2016';
                  break;
                case 4:
                  weekDay = '2017';
                  break;
                case 5:
                  weekDay = '2018';
                  break;
                case 6:
                  weekDay = '2019';
                  break;
              }
              return BarTooltipItem(weekDay + '\n' + (rod.y - 1).toString(),
                  TextStyle(color: Colors.yellow));
            }),
        touchCallback: (barTouchResponse) {
          setState(() {
            if (barTouchResponse.spot != null &&
              barTouchResponse.touchInput is! FlPanEnd &&
              barTouchResponse.touchInput is! FlLongPressEnd) {
              touchedIndex = barTouchResponse.spot.touchedBarGroupIndex;
            } else {
              touchedIndex = -1;
            }
          });
        }
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
            showTitles: true,
            textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
            margin: 16,
            getTitles: (double value) {
              switch (value.toInt()) {
                case 0:
                  return '2013';
                case 1:
                  return '2014';
                case 2:
                  return '2015';
                case 3:
                  return '2016';
                case 4:
                  return '2017';
                case 5:
                  return '2018';
                case 6:
                  return '2019';
                default:
                  return '';
              }
            }),
        leftTitles: const SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
    );
  }

  BarChartData randomData() {
    return BarChartData(
      barTouchData: const BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
            showTitles: true,
            textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
            margin: 16,
            getTitles: (double value) {
              switch (value.toInt()) {
                case 0:
                  return '2013';
                case 1:
                  return '2014';
                case 2:
                  return '2015';
                case 3:
                  return '2016';
                case 4:
                  return '2017';
                case 5:
                  return '2018';
                case 6:
                  return '2019';
                default:
                  return '';
              }
            }),
        leftTitles: const SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 1:
            return makeGroupData(1, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 2:
            return makeGroupData(2, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 3:
            return makeGroupData(3, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 4:
            return makeGroupData(4, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 5:
            return makeGroupData(5, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          case 6:
            return makeGroupData(6, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[Random().nextInt(widget.availableColors.length)]);
          default:
            return null;
        }
      }),
    );
  }

  Future<dynamic> refreshState() async {
    setState(() {});
    await Future<dynamic>.delayed(animDuration + Duration(milliseconds: 50));
    if (isPlaying) {
      refreshState();
    }
  }
}