import 'package:budgetin/screens/dashboard/DashboardPage.dart';
import 'package:budgetin/screens/login/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  final PageController _pageController = PageController(initialPage: 0);
  final int _numPages = 3;
  int _currentPage = 0;

  List<Widget> _buildPageIndicator(){
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++){
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive){
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 6.0),
      height: 8,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF5C74EF) : Colors.grey[300],
        borderRadius: BorderRadius.all(Radius.circular(30))),);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
          child: new Container(
          decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            //   stops: [0.1, 0.4, 0.7, 0.9],
            //   colors: [
            //     Color(0xFF3594DD),
            //     Color(0xFF4563DB),
            //     Color(0xFF5036D5),
            //     Color(0xFF5B16D0),
            //   ]
            // )
            color: Colors.white
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 550,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page){
                    setState(() {
                      _currentPage = page;  
                    });
                  },
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Container(
                          //   alignment: Alignment.topRight,
                          //   child: FlatButton(
                          //     onPressed: () => print("skip"),
                          //     child: Text("Skip", style: TextStyle(color: Color(0xFF2F4DEF), fontSize: 20, fontFamily: "MontserratMedium"))
                          //   ),
                          // ),
                          Center(
                            child: Image(
                              image: AssetImage("assets/images/ic_onboard1/ic_onboard1.png"),
                              height: 300,
                              width: 300,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(26.0),
                            child: Text(
                              "With BudgetIn you can easily manage your money, it maybe your income, outcome, and also your daily budget.",
                              style: (TextStyle(
                                color: Color(0xFF444242),
                                fontSize: 20,
                                fontFamily: "Montserrat")),
                              textAlign: TextAlign.center,
                              ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Center(
                              child: Image(
                                image: AssetImage("assets/images/ic_onboard2/ic_onboard2.png"),
                                height: 300,
                                width: 280,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(26.0),
                            child: Text(
                              "Save your income and your investment then set your budgets to buy something which important for you.",
                              style: (TextStyle(
                                color: Color(0xFF444242),
                                fontSize: 20,
                                fontFamily: "Montserrat")),
                              textAlign: TextAlign.center,
                              ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Image(
                              image: AssetImage("assets/images/ic_onboard3/ic_onboard3.png"),
                              height: 300,
                              width: 300,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(26.0),
                            child: Text(
                              "Knowing any range of your investment like gold, cryptocurrency, forex and many more by real time.",
                              style: (TextStyle(
                                color: Color(0xFF444242),
                                fontSize: 20,
                                fontFamily: "Montserrat")),
                              textAlign: TextAlign.center,
                              ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              _currentPage != _numPages - 1 
                  ? Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: FlatButton(
                                onPressed: () {
                                  _pageController.animateToPage(_currentPage = 2,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                                },
                                child: Text("SKIP", style: TextStyle(color: Color(0xFF444242), fontSize: 20, fontFamily: "MontserratMedium"))
                              ),
                            ),
                          Align(
                            alignment: FractionalOffset.bottomRight,
                            child: FlatButton(
                              onPressed: (){
                                _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Text("NEXT", style: TextStyle(color: Color(0xFF2F4DEF), fontSize: 20, fontFamily: "MontserratMedium"),
                            ),
                          ),
                       ),
                        ],
                      ),
                    ),
                ) :
                Text("")
            ],
          ),
        ),
      ),
      bottomSheet: BottomSheet(
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return _currentPage == _numPages - 1 
        ? Padding(
          padding: const EdgeInsets.all(15),
          child: InkWell(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFF2F4DEF),
              borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: InkWell(
                child: Center(
                  child: Text("Get Started", style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: "Montserrat"),),
                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) =>
                  LoginPage()
                )),
              ),
            ),
          ),
        ) 
        : Text("");
      }, onClosing: () {},
      )
    );
  }
}