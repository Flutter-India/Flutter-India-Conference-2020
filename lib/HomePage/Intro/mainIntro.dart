import 'package:FlutterConIndia2020/widgets/worldReunite.dart';
import 'package:flutter/material.dart';

import 'package:motion_widget/motion_widget.dart';

import '../../widgets/widget.dart';

class MainIntro extends StatelessWidget {
  const MainIntro({
    Key key,
    @required this.motionExitConfigurations,
  }) : super(key: key);

  final MotionExitConfigurations motionExitConfigurations;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      margin: EdgeInsets.only(
        top: 90.0,
      ),
      child: Motion<Column>(
        durationMs: 3000,
        crossAxisAlignment: CrossAxisAlignment.center,
        exitConfigurations: motionExitConfigurations,
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          MotionElement(
            interval: Interval(0.0, 0.30),
            displacement: 100,
            orientation: MotionOrientation.DOWN,
            child: WhatisFlutterConIndia(),
          ),
          MotionElement(
            child: EventDesc(),
            interval: Interval(0.3, 1.0),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 64), child: Divider()),
          SizedBox(
            height: 10.0,
          ),
          MotionElement(
            interval: Interval(0.4, 1.0),
            mode: MotionMode.TRANSLATE,
            child: When(
              color: Colors.white,
            ),
          ),
          MotionElement(
            interval: Interval(0.5, 1.0),
            child: EventTime(
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 64,
            ),
            child: Divider(),
          ),
          SizedBox(
            height: 10.0,
          ),
          MotionElement(
              interval: Interval(0.58, 1.0),
              child: GoalHead(color: Colors.white)),
          MotionElement(
              interval: Interval(0.63, 1.0),
              child: GoadAns(color: Colors.white)),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 64), child: Divider()),
          SizedBox(
            height: 10.0,
          ),
          MotionElement(
              interval: Interval(0.67, 1.0),
              child: FlutterWorldUnited(color: Colors.white)),
          MotionElement(
              interval: Interval(0.69, 1.0),
              child: WorldReunitedQuote(color: Colors.white)),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
