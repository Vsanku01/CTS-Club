//import 'package:flutter/material.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:cts_club/pages/InitialScreen.dart';
//
//Color PrimaryColor = Colors.blueAccent;
//
//void main() => runApp(MyApp());
//
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//
//      routes: <String, WidgetBuilder>{
//        '/initial': (BuildContext context) => new InitialScreen(),
//
//      },
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  @override
//  Widget build(BuildContext context) {
//    double screenWidth = MediaQuery.of(context).size.width;
//    double screenHeight = MediaQuery.of(context).size.height;
//    return SafeArea(
//      child: Scaffold(
//        body: ListView(
//          children: <Widget>[
//            Stack(
//              children: <Widget>[
//                Container(
//                  height: screenHeight,
//                  decoration: BoxDecoration(
//                      borderRadius: BorderRadius.only(
//                        bottomLeft: Radius.circular((30.0)),
//                        bottomRight: Radius.circular(30.0),
//                      ),
//                      image: DecorationImage(
//                          image: AssetImage('assets/testupscale.jpg'),
//                          fit: BoxFit.fill
//                      )
//
//                  ),
//                  child: Stack(
//                    children: <Widget>[
//                      Positioned(
//                          top: screenHeight - 500.0,
//                          left: screenWidth -  250.0,
//                          child: FadeAnimatedTextKit(
//                            text: [
//                              "  WELCOME TO",
//                              "   COGNIZANT",
//                              " STUDENT CLUB",
//                            ],
//                            textStyle: TextStyle(
//                              fontSize: 30.0,
//                              fontFamily: "Agne",
//                              fontWeight: FontWeight.bold,
//                              color: Colors.white,
//                            ),
//                          )
//                      ),
//                      Positioned(
//                        top: screenHeight - 300,
//                        left: screenWidth - 240,
//                        child: Container(
//                          height: 50.0,
//                          child: RaisedButton(
//                            onPressed: () {
//                              Navigator.of(context).pushNamed('/initial');
//
//                            },
//                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
//                            padding: EdgeInsets.all(0.0),
//                            child: Ink(
//                              decoration: BoxDecoration(
//                                  gradient: LinearGradient(colors: [Color(0xff7B0AE3), Color(0xffD3FFFE)],
//                                    begin: Alignment.centerLeft,
//                                    end: Alignment.centerRight,
//                                  ),
//                                  borderRadius: BorderRadius.circular(30.0)
//                              ),
//                              child: Container(
//                                constraints: BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
//                                alignment: Alignment.center,
//                                child: Text(
//                                  "Take a Tour",
//                                  textAlign: TextAlign.center,
//                                  style: TextStyle(
//                                    color: Colors.white,
//                                    fontSize: 18.0,
//                                  ),
//                                ),
//                              ),
//                            ),
//                          ),
//                        ),
//                      )
//                    ],
//                  ),
//                ),
//
//              ],
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//
//
//
//
//
//import 'package:flutter/material.dart';
//
//import 'package:google_fonts/google_fonts.dart';
//
//
//class TaskHistory extends StatefulWidget {
//  @override
//  _TaskHistoryState createState() => _TaskHistoryState();
//}
//
//class _TaskHistoryState extends State<TaskHistory> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.blueAccent,
//      body: ListView(
//        children: <Widget>[
//          Padding(
//            padding: const EdgeInsets.only(top: 50.0,left: 10.0),
//            child: Text(
//              '',
//              style: GoogleFonts.raleway(
//                fontWeight: FontWeight.bold,
//                fontSize: 30.0,
//                color: Colors.white,
//              ),
//            ),
//          ),
//
//
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Material(
//              borderRadius: BorderRadius.all(Radius.circular(20.0)),
//              child: Container(
//                height: 400.0,
//                width: 400.0,
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
//                  color: Colors.white,
//                ),
//                child: Stack(
//                  children: <Widget>[
//                    Container(
//                      height: 250.0,
//                      decoration: BoxDecoration(
//                          image: DecorationImage(
//                            image: AssetImage('assets/completedtask.png'),
//                            fit: BoxFit.cover,
//                          )
//                      ),
//                    ),
//                    Positioned(
//                      top: 270.0,
//                      left: 10,
//                      child: Text(
//                        "We have accomplished all the tasks \n and waiting for review!",
//                        style: GoogleFonts.aclonica(
//                          fontSize: 20.0,
//                        ),),
//                    )
//                  ],
//                ),
//
//              ),
//            ),
//          )
//
//        ],
//      ),
//    );
//  }
//}
//
