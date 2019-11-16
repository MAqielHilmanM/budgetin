import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

class DashboardPage extends StatefulWidget {

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>  {

  @override
  Widget build(BuildContext context) {  

    return Scaffold(
      drawer: Drawer(
        child: Text("lalal"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: CustomTheme.colorYellow,
        child: Image.asset("assets/images/ic_plus_blue/ic_plus_blue.png", height: 20, width: 20,)
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
            child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top : 25.0, left: 15.0, right: 15),
                  child: Stack(
                     children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset("assets/images/ic_drawer/ic_drawer.png")),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical : 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            WidgetText.montserratRegularBlack20("Hello, "),
                            WidgetText.montserratBoldBlack20("Bambank!")
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
                            borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                        ),
                      ),
                    ],
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
                                WidgetText.montserratSemiBoldBlue20("5,000,000"),
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
                                        color: Color(0xFF4242AF),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(child: Text("Daily stat", style: TextStyle(color: Colors.white),)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF4242AF),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(child: Text("Weekly stat", style: TextStyle(color: Colors.white),)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF4242AF),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(child: Text("Monthly stat", style: TextStyle(color: Colors.white),)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF4242AF),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(child: Text("Yearly stat", style: TextStyle(color: Colors.white),)),
                                      ),
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
                  height: 60,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      WidgetText.montserratRegularBlack20("Budgets"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
