import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:budgetin/widget/buttons/WidgetButton.dart';
import 'package:budgetin/widget/cards/WidgetCard.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InOutHistoryPage extends StatelessWidget {
  var androidVersions = [
      _getHistory("", "", "", true)
  ];

  static Widget _getHistory(String title, String date, String price, bool isInCome ) {
    return isInCome ? WidgetCardHistory.income(title, date, price) : WidgetCardHistory.outcome(title, date, price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        leading: ButtonBack(),
//        title: Text("Income Outcome List"),
//      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 25.0, left: 15, right: 15),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ButtonBack(),
                      ),
//                      Align(
//                        alignment: Alignment.center,
//                        child: WidgetText.poppinsSemiBoldBlueDark25("Income Outcome List"),
//                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 47),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              WidgetText.poppinsSemiBoldBlueDark25(
                                  "Income Outcome List")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          constraints: BoxConstraints.expand(height: 60),
                          child: TabBar(
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                              isScrollable: false,
                              unselectedLabelColor: Colors.grey[400],
                              labelColor: Colors.black,
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicator: new BubbleTabIndicator(
                                indicatorRadius: 10,
                                indicatorHeight: 20.0,
                                indicatorColor: Colors.white,
                                tabBarIndicatorSize: TabBarIndicatorSize.tab,
                              ),
                              tabs: [
                                Tab(text: "All Data"),
                                Tab(text: "Income"),
                                Tab(text: "Outcome")
                              ]),
                        ),
                        Expanded(
                          child: TabBarView(children: [
                            ListView.builder(
                              itemBuilder: (context, index) {
                                return Card(
                                    child: androidVersions[index]);
                              },
                              itemCount: androidVersions.length,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height,
                                    child: ListView.builder(
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Card(
                                              child: androidVersions[index]),
                                        );
                                      },
                                      itemCount: androidVersions.length,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height,
                                    child: ListView.builder(
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Card(
                                              child: androidVersions[index]),
                                        );
                                      },
                                      itemCount: androidVersions.length,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBar {}
