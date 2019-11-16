import 'package:budgetin/widget/buttons/Button.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  var androidVersions = [
    const ListTile(
      title: Text('The Enchanted Nightingale'),
      subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
    ),
    const ListTile(
      title: Text('The Enchanted Nightingale'),
      subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
    ),
    const ListTile(
      title: Text('The Enchanted Nightingale'),
      subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
    ),
    const ListTile(
      title: Text('The Enchanted Nightingale'),
      subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
    ),
    const ListTile(
      title: Text('The Enchanted Nightingale'),
      subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
    ),
    const ListTile(
      title: Text('The Enchanted Nightingale'),
      subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
    ),
    const ListTile(
      title: Text('The Enchanted Nightingale'),
      subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
    ),
    const ListTile(
      title: Text('The Enchanted Nightingale'),
      subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        leading: ButtonBack(),
//        title: Text("Income Outcome List"),
//      ),
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 25.0, left: 15, right: 15),
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
                              WidgetText.poppinsSemiBoldBlueDark25("Income Outcome List")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Card(child: androidVersions[index]),
                    );
                  },
                  itemCount: androidVersions.length,
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
