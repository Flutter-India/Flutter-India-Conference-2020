import 'package:FlutterConIndia2020/utils/con_info.dart';
import 'package:flutter/material.dart';

import 'Responsive.dart';

class FlutterWorldUnited extends StatelessWidget {
  const FlutterWorldUnited({
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
          'Flutter world 🌎 reunited',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 45.0,
            color: Colors.black,
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
  const GoadAns({
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
          Con_Info.goal,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Color(0xFF1B36FF),
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
  }) : super(key: key);

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
          'Our Goal 🥅',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 45.0,
            color: Colors.black,
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
    this.fonts,
    this.paddingMobileSize,
    this.paddingDesktopSize,
    this.textMobileSize,
    this.textDesktopSize,
  }) : super(key: key);
  final Color color;
  final String fonts;
  double paddingMobileSize = 30.0;
  double textMobileSize = 15.0;
  double paddingDesktopSize = 200.0;
  double textDesktopSize = 25.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveWidget.isSmallScreen(context)
            ? paddingMobileSize
            : paddingDesktopSize,
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
            color: Color(0xFF1B36FF),
            fontSize: ResponsiveWidget.isSmallScreen(context)
                ? textMobileSize
                : textDesktopSize,
            fontFamily: 'assets/fonts/ProductSans.ttf',
          ),
        ),
      ),
    );
  }
}

class When extends StatelessWidget {
  When({
    Key key,
    this.color,
    this.fonts,
    this.paddingMobileSize,
    this.paddingDesktopSize,
    this.textMobileSize,
    this.textDesktopSize,
  }) : super(key: key);
  final Color color;
  final String fonts;
  double paddingMobileSize = 30.0;
  double textMobileSize = 35.0;
  double paddingDesktopSize = 200.0;
  double textDesktopSize = 45.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveWidget.isSmallScreen(context)
            ? paddingMobileSize
            : paddingDesktopSize,
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
            fontSize: ResponsiveWidget.isSmallScreen(context)
                ? textMobileSize
                : textDesktopSize,
            color: Colors.black,
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
    this.color,
    this.fonts,
    this.paddingMobileSize,
    this.paddingDesktopSize,
    this.textMobileSize,
    this.textDesktopSize,
  }) : super(key: key);
  final Color color;
  final String fonts;
  double paddingMobileSize = 30.0;
  double textMobileSize = 15.0;
  double paddingDesktopSize = 200.0;
  double textDesktopSize = 15.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveWidget.isSmallScreen(context)
            ? paddingMobileSize
            : paddingDesktopSize,
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
            color: color,
            fontSize: ResponsiveWidget.isSmallScreen(context)
                ? textMobileSize
                : textDesktopSize,
            fontFamily: fonts,
          ),
        ),
      ),
    );
  }
}

class WhatisFlutterConIndia extends StatelessWidget {
  WhatisFlutterConIndia({
    Key key,
    this.color,
    this.fonts,
    this.paddingMobileSize,
    this.paddingDesktopSize,
    this.textMobileSize,
    this.textDesktopSize,
  }) : super(key: key);

  final Color color;
  String fonts = 'assets/fonts/ProductSans.ttf';
  double paddingMobileSize = 30.0;
  double textMobileSize = 30.0;
  double paddingDesktopSize = 200.0;
  double textDesktopSize = 45.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveWidget.isSmallScreen(context)
            ? paddingMobileSize
            : paddingDesktopSize,
        right: 100.0,
        top: 7.0,
        bottom: 7.0,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          'What is Flutter Con India?',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: ResponsiveWidget.isSmallScreen(context)
                ? textMobileSize
                : textDesktopSize,
            color: color,
            fontWeight: FontWeight.w600,
            fontFamily: fonts,
          ),
        ),
      ),
    );
  }
}
