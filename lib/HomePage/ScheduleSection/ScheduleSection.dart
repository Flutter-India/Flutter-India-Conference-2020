import 'package:flutter/material.dart';
import 'package:motion_widget/motion_widget.dart';

import '../Responsiveness/Responsive.dart';
import 'ScheduleScreen.dart';

class ScheduleSection extends StatelessWidget {
  const ScheduleSection({
    Key key,
    @required this.motionExitConfigurations,
  }) : super(key: key);

  final MotionExitConfigurations motionExitConfigurations;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      margin: EdgeInsets.only(top: 90.0),
      child: Motion<Column>(
        durationMs: 2500,
        crossAxisAlignment: CrossAxisAlignment.center,
        exitConfigurations: motionExitConfigurations,
        children: <Widget>[
          SizedBox(
            height: 35,
          ),
          MotionElement(
            interval: Interval(0.67, 1.0),
            child: Center(
              child: Text(
                'Schedule',
                style: TextStyle(
                  fontSize:
                      ResponsiveWidget.isSmallScreen(context) ? 35.0 : 45.0,
                  fontFamily: 'assets/fonts/ProductSans.ttf',
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          ScheduleScreen(),
        ],
      ),
    );
  }
}
