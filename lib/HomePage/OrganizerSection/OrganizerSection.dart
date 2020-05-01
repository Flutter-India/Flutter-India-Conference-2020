import 'package:flutter/material.dart';

import '../Responsiveness/Responsive.dart';
import 'OrganizerScreen.dart';

class OrganzerSection extends StatelessWidget {
  const OrganzerSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 90,
      ),
      color: Colors.black,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 35,
          ),
          Center(
            child: Text(
              'Organized by',
              style: TextStyle(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 35.0 : 55.0,
                fontFamily: 'assets/fonts/ProductSans.ttf',
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          OrganizerScreen(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
