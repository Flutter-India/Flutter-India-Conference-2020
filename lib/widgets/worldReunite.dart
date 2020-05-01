import 'package:flutter/material.dart';

import '../HomePage/Responsiveness/Responsive.dart';

class WorldReunitedQuote extends StatelessWidget {
  WorldReunitedQuote({
    this.color,
    this.fonts,
  });

  final Color color;
  String fonts = 'assets/fonts/ProductSans.ttf';

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
          'People! Want to meet the most recognizable Flutter developers and talk with them?\nThis is the place!\nFlutter India is the easiest way to talk with them.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: color,
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 15.0 : 25.0,
            fontFamily: fonts,
          ),
        ),
      ),
    );
  }
}
