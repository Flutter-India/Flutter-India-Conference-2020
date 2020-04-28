import 'package:flutter/material.dart';

import '../Responsive.dart';
import '../WorldReunite.dart';
import '../widget.dart';

class HomePageNew extends StatelessWidget {
  static const String tag = '/HomePageNew';
  String primaryFont = 'assets/fonts/ProductSans.ttf';
  String coverImage = 'assets/Images/Logos/FlutterConLogos/Group_twenty.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Image.asset(
                  coverImage,
                ),
              ),
            ),
            SizedBox(
              width: ResponsiveWidget.isSmallScreen(context)
                  ? MediaQuery.of(context).size.width
                  : MediaQuery.of(context).size.width * 0.7,
              child: Container(
                margin: EdgeInsets.only(
                  top: 70.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    WhatisFlutterConIndia(),
                    EventDesc(),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 64),
                        child: Divider()),
                    SizedBox(
                      height: 10.0,
                    ),
                    When(),
                    EventTime(),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 64),
                        child: Divider()),
                    SizedBox(
                      height: 10.0,
                    ),
                    GoalHead(),
                    GoadAns(),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 64),
                        child: Divider()),
                    SizedBox(
                      height: 10.0,
                    ),
                    FlutterWorldUnited(),
                    WorldReunitedQuote(),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
