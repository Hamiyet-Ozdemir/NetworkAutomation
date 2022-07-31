import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

void main() {
  runApp(MyApp());
}

var data1 = [0.0, -2.0, 3.5, -2.0, 0.5, 0.7, 0.8, 1.0, 2.0, 3.0, 3.2];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final DateTime now = DateTime.now();
  final DateFormat formatterr = DateFormat.yMMMMd('en_US');
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              padding: const EdgeInsets.only(top: 55, left: 14),
              height: 120,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextStyle(
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Color.fromRGBO(0, 215, 255, 1)),
                    child: Text(
                      formatterr.format(now),
                    ),
                  ),
                  SizedBox(height: 5),
                  DefaultTextStyle(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                    child: Text("Cpu"),
                  )
                ],
              )),
          Container(
              color: Color.fromRGBO(247, 248, 251, 1),
              height: MediaQuery.of(context).size.height - 120,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: 160,
                    margin: EdgeInsets.only(left: 14, right: 14, top: 23),
                    padding: EdgeInsets.only(top: 11, right: 45, left: 16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DefaultTextStyle(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          child: Text("Overall Cpu Usage"),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 0),
                                    child: new LinearPercentIndicator(
                                      width: MediaQuery.of(context).size.width -
                                          210,
                                      lineHeight: 28.0,
                                      percent: 0.5,
                                      backgroundColor: Colors.grey,
                                      progressColor: Colors.blue,
                                    ),
                                  ),
                                ],
                              )),
                              DefaultTextStyle(
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 48,
                                  color: Color.fromRGBO(0, 0, 0, 0.6),
                                ),
                                child: Text("%16"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 11, bottom: 11),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 17),
                                    child: Image.asset(
                                      "assets/Icons/cpu.png",
                                      width: 16,
                                    ),
                                  ),
                                  DefaultTextStyle(
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                    child: Text("CPU Cores"),
                                  ),
                                ],
                              )),
                              DefaultTextStyle(
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                                child: Text("4"),
                              )
                            ],
                          ),
                        ),
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 17),
                                  child: Image.asset(
                                    "assets/Icons/frekans.png",
                                    width: 16,
                                  ),
                                ),
                                DefaultTextStyle(
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                  child: Text("Frequency"),
                                ),
                              ],
                            )),
                            DefaultTextStyle(
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: Colors.black,
                              ),
                              child: Text("2.80 Ghz"),
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                  Container(
                    height: 205,
                    margin: EdgeInsets.only(left: 14, right: 14, top: 23),
                    padding: EdgeInsets.only(top: 11, right: 45, left: 16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Column(
                                children: [
                                  Container(
                                      height: 40,
                                      width: 40,
                                      child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color.fromRGBO(
                                                  28, 107, 226, 0.4)),
                                          child: Center(
                                            child: DefaultTextStyle(
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 22,
                                                color: Colors.black,
                                              ),
                                              child: Text("25"),
                                            ),
                                          ))),
                                  DefaultTextStyle(
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                    child: Text("Current"),
                                  )
                                ],
                              )),
                              Container(
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(bottom: 14),
                                          child: DefaultTextStyle(
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            child: Text("Max"),
                                          ),
                                        ),
                                        DefaultTextStyle(
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                          child: Text("Min"),
                                        )
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 28),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 14),
                                            child: DefaultTextStyle(
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                              child: Text("67"),
                                            ),
                                          ),
                                          DefaultTextStyle(
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                            child: Text("12"),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Sparkline(
                          data: data1,
                          fillMode: FillMode.below,
                          fillGradient: new LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(28, 107, 226, 0.6),
                              Color.fromRGBO(28, 107, 226, 0.2)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: 220,
                      margin: EdgeInsets.only(left: 14, right: 14, top: 23),
                      padding: EdgeInsets.only(top: 0, right: 25, left: 0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Scaffold(
                          backgroundColor: Colors.white,
                          body: ListView.separated(
                            separatorBuilder: (context, int) {
                              return Divider(
                                color: Colors.black,
                              );
                            },
                            // shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return GridView.count(
                                shrinkWrap: true,
                                crossAxisCount: 2,
                                childAspectRatio: 3,
                                children: List.generate(6, (index) {
                                  return Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            DefaultTextStyle(
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                              child: Text("Any Desk"),
                                            ),
                                            DefaultTextStyle(
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                              child: Text("%9"),
                                            )
                                          ],
                                        ),
                                        LinearPercentIndicator(
                                          width: (MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  100) /
                                              2,
                                          lineHeight: 15.0,
                                          percent: 0.5,
                                          backgroundColor: Colors.grey,
                                          progressColor: Colors.blue,
                                        )
                                      ],
                                    ),
                                  );
                                }),
                              );
                            },
                            itemCount: 6,
                          ))),
                ],
              )),
        ],
      ),
    );
  }
}
