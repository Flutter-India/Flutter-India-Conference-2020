import 'package:flutter/material.dart';

import 'Responsive.dart';

class WorldReunitedQuote extends StatelessWidget {
  WorldReunitedQuote({
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
          'People! Want to meet the most recognizable Flutter developers and talk with them?\nThis is the place!\nFlutter India is the easiest way to talk with them.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Color(0xFF1B36FF),
//color: Colors.white70,
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
