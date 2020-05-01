import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Responsiveness/Responsive.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.black,
          width: double.infinity,
          //height: MediaQuery.of(context).size.height / 2,
        ),
        Container(
          color: Colors.black,
          width: double.infinity,
          //height: MediaQuery.of(context).size.height / 2,
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 110.0,
                ),
                Text(
                  'Contact us',
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
                      GestureDetector(
                        onTap: () async {
                          String url = 'https://twitter.com/IndiaFlutter';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: CircleAvatar(
                          radius: ResponsiveWidget.isSmallScreen(context)
                              ? 20.0
                              : 35.0,
                          backgroundImage: AssetImage(
                              'assets/Images/socialIcons/twitter.png'),
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      GestureDetector(
                        onTap: () async {
                          String url = 'https://www.facebook.com/IndiaFlutter';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: CircleAvatar(
                          radius: ResponsiveWidget.isSmallScreen(context)
                              ? 20.0
                              : 35.0,
                          backgroundImage: AssetImage(
                              'assets/Images/socialIcons/facebook.png'),
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      GestureDetector(
                        onTap: () async {
                          String url =
                              'https://www.youtube.com/channel/UCQ6LuIX6WBwIEOiVakjWM6w';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: CircleAvatar(
                          radius: ResponsiveWidget.isSmallScreen(context)
                              ? 20.0
                              : 35.0,
                          backgroundImage: AssetImage(
                              'assets/Images/socialIcons/youtube.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ResponsiveWidget.isSmallScreen(context) ? 15.0 : 50.0,
                ),
                GestureDetector(
                  onTap: () async {
                    String url =
                        'https://fluttercommunityindia.slack.com/join/shared_invite/zt-ds4x0r8j-gjjnS~se5RLRy4suELR6xQ';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    width:
                        ResponsiveWidget.isSmallScreen(context) ? 120.0 : 235.0,
                    child: Image.asset(
                      'assets/Images/socialIcons/add_to_slack.png',
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
