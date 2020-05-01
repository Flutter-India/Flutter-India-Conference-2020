import 'package:flutter/material.dart';
import 'package:motion_widget/motion_widget.dart';

class Motion {
  static MotionElement getFeatureItem(Interval interval, String text) {
    return MotionElement(
      interval: interval,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(width: 10),
          Flexible(
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
