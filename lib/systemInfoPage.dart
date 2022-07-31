import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

var data1 = [0.0, -2.0, 3.5, -2.0, 0.5, 0.7, 0.8, 1.0, 2.0, 3.0, 3.2];

class systemInfoPage extends StatefulWidget {
  systemInfoPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _systemInfoPage createState() => _systemInfoPage();
}

class _systemInfoPage extends State<systemInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              padding: const EdgeInsets.only(top: 25, left: 14),
              height: 70,
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
                      DateTime.now().toString(),
                    ),
                  ),
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
              height: MediaQuery.of(context).size.height - 75,
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
                                    margin: EdgeInsets.only(right: 17),
                                    child: new LinearPercentIndicator(
                                      width: MediaQuery.of(context).size.width -
                                          200,
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
                                      height: 50,
                                      width: 50,
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
                                                fontSize: 28,
                                                color: Colors.black,
                                              ),
                                              child: Text("25"),
                                            ),
                                          ))),
                                  DefaultTextStyle(
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
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
                              Color.fromRGBO(28, 107, 226, 0.6)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: 176,
                      margin: EdgeInsets.only(left: 14, right: 14, top: 23),
                      padding: EdgeInsets.only(top: 11, right: 25, left: 0),
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
