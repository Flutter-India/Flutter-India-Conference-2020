import 'package:flutter/material.dart';
import 'package:FlutterConIndia2020/utils/con_Info.dart';

import '../HomePage/Responsiveness/Responsive.dart';

class FlutterWorldUnited extends StatelessWidget {
  FlutterWorldUnited({Key key, this.color}) : super(key: key);
  Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 200.0,
        right: 100.0,
        top: 7.0,
        bottom: 7.0,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          'Flutter world reunited 🌎',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 45.0,
            color: color,
            fontWeight: FontWeight.w600,
            fontFamily: 'assets/fonts/ProductSans.ttf',
            wordSpacing: 0.2,
          ),
        ),
      ),
    );
  }
}

class GoadAns extends StatelessWidget {
  GoadAns({
    Key key,
    this.color,
  }) : super(key: key);
  Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 200.0,
        right: 100.0,
        top: 7.0,
        bottom: 7.0,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          Con_Info.goal,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: color,
//color: Colors.white70,
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 15.0 : 25.0,
            fontFamily: 'assets/fonts/ProductSans.ttf',
          ),
        ),
      ),
    );
  }
}

class GoalHead extends StatelessWidget {
  GoalHead({
    Key key,
    this.color,
  }) : super(key: key);
  Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 200.0,
        right: 30.0,
        top: 7.0,
        bottom: 7.0,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          'Our Goal 🎯',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 45.0,
            color: color,
            fontWeight: FontWeight.w600,
            fontFamily: 'assets/fonts/ProductSans.ttf',
          ),
        ),
      ),
    );
  }
}

class EventTime extends StatelessWidget {
  EventTime({
    Key key,
    this.color,
  }) : super(key: key);
  Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 200.0,
        right: 100.0,
        top: 7.0,
        bottom: 7.0,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          Con_Info.eventtime,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: color,
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 15.0 : 25.0,
            fontFamily: 'assets/fonts/ProductSans.ttf',
          ),
        ),
      ),
    );
  }
}

class When extends StatelessWidget {
  When({Key key, this.color}) : super(key: key);
  Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 200.0,
        right: 100.0,
        top: 7.0,
        bottom: 7.0,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          'When? ⏰️',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 35.0 : 45.0,
            color: color,
            fontWeight: FontWeight.w600,
            fontFamily: 'assets/fonts/ProductSans.ttf',
          ),
        ),
      ),
    );
  }
}

class EventDesc extends StatelessWidget {
  EventDesc({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 200.0,
        right: 100.0,
        top: 7.0,
        bottom: 7.0,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          Con_Info.descriptionText,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Colors.white,
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 15.0 : 25.0,
            fontFamily: 'assets/fonts/ProductSans.ttf',
          ),
        ),
      ),
    );
  }
}

class WhatisFlutterConIndia extends StatelessWidget {
  WhatisFlutterConIndia({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 200.0,
        right: 100.0,
        top: 7.0,
        bottom: 7.0,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          'What is FlutterCon India?',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 45.0,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily: 'assets/fonts/ProductSans.ttf',
          ),
        ),
      ),
    );
  }
}
