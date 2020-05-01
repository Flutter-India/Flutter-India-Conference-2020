import 'package:flutter/material.dart';

import '../Responsiveness/Responsive.dart';

class QNA {
  static Container buildAnswer(BuildContext context, String answer) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 7.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          answer,
          style: TextStyle(
            fontFamily: 'assets/fonts/ProductSans.ttf',
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 10.0 : 20.0,
          ),
        ),
      ),
      color: Colors.white,
    );
  }

  static Container buildQuestion(BuildContext context, String question) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          question,
          style: TextStyle(
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 15.0 : 25.0,
            fontFamily: 'assets/fonts/ProductSans.ttf',
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
    );
  }
}
