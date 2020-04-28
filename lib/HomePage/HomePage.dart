import 'package:FlutterConIndia2020/HomePage/QNA.dart';
import 'package:FlutterConIndia2020/Responsive.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../WorldReunite.dart';
import '../organizer_screen.dart';
import '../widget.dart';
import 'FAQ.dart';

class HomePage extends StatelessWidget {
  static const String tag = '/HomePage';
  GlobalKey<FormState> _scaffoldkey = GlobalKey();
  Color primaryColor = Colors.black;

  String data;
  String primaryFont = 'assets/fonts/ProductSans.ttf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      resizeToAvoidBottomPadding: true,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.75,
              color: primaryColor,
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/Vector.png')),
                    Expanded(
                      child: Container(
                        child: ScaleAnimatedTextKit(
                            onTap: () {},
                            text: [
                              "Flutter",
                              "\nCon",
                              "India",
                              "\n2020",
                            ],
                            textStyle: TextStyle(
                              fontSize: 250.0,
                              color: Colors.white,
                              fontFamily: primaryFont,
                            ),
                            alignment: AlignmentDirectional.topStart),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: ResponsiveWidget.isSmallScreen(context)
                  ? MediaQuery.of(context).size.width
                  : MediaQuery.of(context).size.width * 0.7,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 70.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        WhatisFlutterConIndia(),
                        EventDesc(),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 64),
                            child: Divider()),
                        SizedBox(
                          height: 10.0,
                        ),
                        When(),
                        EventTime(),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 64),
                            child: Divider()),
                        SizedBox(
                          height: 10.0,
                        ),
                        GoalHead(),
                        GoadAns(),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 64),
                            child: Divider()),
                        SizedBox(
                          height: 10.0,
                        ),
                        FlutterWorldUnited(),
                        WorldReunitedQuote(),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: primaryColor,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.8,
                    margin: EdgeInsets.only(top: 90.0),
                    child: Padding(
                      padding: EdgeInsets.only(top: 0.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30.0,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Want to be a ',
                                      style: TextStyle(
                                        fontSize:
                                            ResponsiveWidget.isSmallScreen(
                                                    context)
                                                ? 25.0
                                                : 45.0,
                                        color: Colors.white,
                                        fontFamily: primaryFont,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'Speaker?',
                                            style: TextStyle()),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30.0,
                                  ),
                                  child: Text(
                                    'If you`re a Flutter Expert,\nyou can help the\nFlutter Community thrive',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: ResponsiveWidget.isSmallScreen(
                                              context)
                                          ? 15.0
                                          : 35.0,
                                      fontFamily:
                                          'assets/fonts/ProductSans.ttf',
                                      color: Colors.yellowAccent,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: RaisedButton(
                                    elevation: 6.0,
                                    splashColor: Colors.red,
                                    hoverElevation: 50.0,
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          ResponsiveWidget.isSmallScreen(
                                                  context)
                                              ? 20.0
                                              : 100.0,
                                      vertical: ResponsiveWidget.isSmallScreen(
                                              context)
                                          ? 10.0
                                          : 30.0,
                                    ),
                                    color: primaryColor,
                                    onPressed: () async {
                                      await Future.delayed(
                                          Duration(milliseconds: 250));
                                      String url =
                                          'https://sessionize.com/FlutterConIN2020/';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      side: BorderSide(
                                          color: Colors.white, width: 2.0),
                                    ),
                                    child: Text(
                                      'Call for Speakers',
                                      style: TextStyle(
                                        fontSize:
                                            ResponsiveWidget.isSmallScreen(
                                                    context)
                                                ? 15.0
                                                : 45.0,
                                        color: Colors.white,
                                        fontFamily:
                                            'assets/fonts/ProductSans.ttf',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      ResponsiveWidget.isSmallScreen(context)
                                          ? 30
                                          : 60.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'Sponsored By',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: ResponsiveWidget.isSmallScreen(
                                              context)
                                          ? 15.0
                                          : 35.0,
                                      color: Colors.white,
                                      fontFamily:
                                          'assets/fonts/ProductSans.ttf',
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    String url = 'https://sessionize.com';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Text(
                                    'Sessionize.com',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontSize:
                                            ResponsiveWidget.isSmallScreen(
                                                    context)
                                                ? 15.0
                                                : 35.0,
                                        color: Colors.white,
                                        fontFamily:
                                            'assets/fonts/ProductSans.ttf',
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              'assets/speaker.png',
                              height: double.infinity,
                              fit: ResponsiveWidget.isSmallScreen(context)
                                  ? BoxFit.cover
                                  : BoxFit.fitHeight,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: ResponsiveWidget.isSmallScreen(context)
                        ? MediaQuery.of(context).size.height * 1
                        : MediaQuery.of(context).size.height * 1,
                    color: Colors.white,
                    child: FAQSection(),
                  ),
                  Container(
                    color: primaryColor,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 35,
                        ),
                        Center(
                          child: Text(
                            'Organized by',
                            style: TextStyle(
                              fontSize: ResponsiveWidget.isSmallScreen(context)
                                  ? 35.0
                                  : 55.0,
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
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.5,
                      ),
                      Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(
                                height: 110.0,
                              ),
                              Text(
                                'Contact us',
                                style: TextStyle(
                                  fontSize:
                                      ResponsiveWidget.isSmallScreen(context)
                                          ? 35.0
                                          : 55.0,
                                  fontFamily: 'assets/fonts/ProductSans.ttf',
                                  color: Color(0xFF1B36FF),
                                ),
                              ),
                              SizedBox(
                                height: 55.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () async {
                                        String url =
                                            'https://twitter.com/IndiaFlutter';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      child: CircleAvatar(
                                        radius: ResponsiveWidget.isSmallScreen(
                                                context)
                                            ? 20.0
                                            : 55.0,
                                        backgroundImage:
                                            AssetImage('assets/twitter.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.0,
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        String url =
                                            'https://www.facebook.com/IndiaFlutter';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      child: CircleAvatar(
                                        radius: ResponsiveWidget.isSmallScreen(
                                                context)
                                            ? 20.0
                                            : 55.0,
                                        backgroundImage:
                                            AssetImage('assets/facebook.png'),
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
                                        radius: ResponsiveWidget.isSmallScreen(
                                                context)
                                            ? 20.0
                                            : 55.0,
                                        backgroundImage:
                                            AssetImage('assets/youtube.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
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
                                        width: ResponsiveWidget.isSmallScreen(
                                                context)
                                            ? 125.0
                                            : 400.0,
                                        child: Image.asset(
                                          'assets/slack.png',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Flutter and the related logo are trademarks of Google LLC. Flutter India is not affiliated with or otherwise sponsored by Google LLC.',
                      style: TextStyle(
                        fontSize: ResponsiveWidget.isSmallScreen(context)
                            ? 8.0
                            : 15.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
