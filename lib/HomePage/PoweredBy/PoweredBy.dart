import 'package:flutter/material.dart';

import '../Responsiveness/Responsive.dart';

class PoweredBy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.black,
          width: double.infinity,
          margin: EdgeInsets.only(
            top: 90.0,
            bottom: 90.0,
          ),
        ),
        Container(
          color: Colors.black,
          width: double.infinity,
          //height: MediaQuery.of(context).size.height / 2,
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 75.0,
                ),
                Text(
                  'Powered by',
                  style: TextStyle(
                    fontSize:
                        ResponsiveWidget.isSmallScreen(context) ? 35.0 : 55.0,
                    fontFamily: 'assets/fonts/ProductSans.ttf',
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 55.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 20.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
//                      CircleAvatar(
//                        radius: ResponsiveWidget.isSmallScreen(context)
//                            ? 20.0
//                            : 35.0,
//                        backgroundImage:
//                            AssetImage('assets/Images/socialIcons/GDG.png'),
//                      ),

                      Image.asset(
                        'assets/Images/socialIcons/GDG.png',
                        width:
                            ResponsiveWidget.isSmallScreen(context) ? 200 : 600,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ResponsiveWidget.isSmallScreen(context) ? 15.0 : 50.0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
