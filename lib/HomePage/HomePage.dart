import 'package:FlutterConIndia2020/Responsive.dart';
import 'package:FlutterConIndia2020/utils/con_info.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../organizer_screen.dart';

class HomePage extends StatelessWidget {
  static const String tag = '/HomePage';
  GlobalKey<FormState> _scaffoldkey = GlobalKey();
  Color primaryColor = Color(0xFF1E40FF);
  String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.75,
              child: Image.asset(
                'assets/Twitter_Cover.png',
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
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
                                        fontFamily:
                                            'assets/fonts/ProductSans.ttf',
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

class WorldReunitedQuote extends StatelessWidget {
  const WorldReunitedQuote({
    Key key,
  }) : super(key: key);

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
            color: Color(0xFF1B36FF),
//color: Colors.white70,
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 15.0 : 25.0,
            fontFamily: 'assets/fonts/ProductSans.ttf',
          ),
        ),
      ),
    );
  }
}

class FlutterWorldUnited extends StatelessWidget {
  const FlutterWorldUnited({
    Key key,
  }) : super(key: key);

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
          'Flutter world 🌎 reunited',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 45.0,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontFamily: 'assets/fonts/ProductSans.ttf',
            wordSpacing: 0.2,
          ),
        ),
      ),
    );
  }
}

class GoadAns extends StatelessWidget {
  const GoadAns({
    Key key,
  }) : super(key: key);

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
          Con_Info.goal,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Color(0xFF1B36FF),
//color: Colors.white70,
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 15.0 : 25.0,
            fontFamily: 'assets/fonts/ProductSans.ttf',
          ),
        ),
      ),
    );
  }
}

class GoalHead extends StatelessWidget {
  const GoalHead({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 200.0,
        right: 30.0,
        top: 7.0,
        bottom: 7.0,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          'Our Goal 🥅',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 45.0,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontFamily: 'assets/fonts/ProductSans.ttf',
          ),
        ),
      ),
    );
  }
}

class EventTime extends StatelessWidget {
  const EventTime({
    Key key,
  }) : super(key: key);

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
          Con_Info.eventtime,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Color(0xFF1B36FF),
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 15.0 : 25.0,
            fontFamily: 'assets/fonts/ProductSans.ttf',
          ),
        ),
      ),
    );
  }
}

class When extends StatelessWidget {
  const When({
    Key key,
  }) : super(key: key);

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
          'When? ⏰️',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 45.0,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontFamily: 'assets/fonts/ProductSans.ttf',
          ),
        ),
      ),
    );
  }
}

class EventDesc extends StatelessWidget {
  const EventDesc({
    Key key,
  }) : super(key: key);

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
          Con_Info.descriptionText,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Color(0xFF1B36FF),
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 15.0 : 25.0,
            fontFamily: 'assets/fonts/ProductSans.ttf',
          ),
        ),
      ),
    );
  }
}

class WhatisFlutterConIndia extends StatelessWidget {
  const WhatisFlutterConIndia({
    Key key,
  }) : super(key: key);

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
          'What is Flutter Con India?',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 45.0,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontFamily: 'assets/fonts/ProductSans.ttf',
          ),
        ),
      ),
    );
  }
}

class OrganizerMeetup extends StatelessWidget {
  OrganizerMeetup({
    Key key,
    @required this.string,
  }) : super(key: key);

  final String string;

  @override
  Widget build(BuildContext context) {
    if (string.isEmpty) {
      return Container(
        width: 0.0,
        height: 0.0,
      );
    }
    return GestureDetector(
      onTap: () async {
        String url = string;
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: CircleAvatar(
        radius: ResponsiveWidget.isSmallScreen(context) ? 10.0 : 20.0,
        backgroundImage: AssetImage('assets/meetup.png'),
      ),
    );
  }
}

class OrganizerTwitter extends StatelessWidget {
  final String string;

  const OrganizerTwitter({
    Key key,
    @required this.string,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (string.isEmpty) {
      return Container(
        width: 0.0,
        height: 0.0,
      );
    }
    return GestureDetector(
      onTap: () async {
        String url = string;
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: CircleAvatar(
        radius: ResponsiveWidget.isSmallScreen(context) ? 10.0 : 20.0,
        backgroundImage: AssetImage('assets/twitter.png'),
      ),
    );
  }
}

class FAQSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 7.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Frequently Asked Question',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 55.0,
                color: Colors.black,
//color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: 'assets/fonts/ProductSans.ttf',
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        buildQuestion(
          context,
          'How can i propose the talk?',
        ),
        SizedBox(
          height: 15.0,
        ),
        buildAnswer(
          context,
          'You can fill the form by clicking Call for Speakers',
        ),
        SizedBox(
          height: 15.0,
        ),
        buildQuestion(
          context,
          'Where will the sessions be broadcast?',
        ),
        SizedBox(
          height: 15.0,
        ),
        buildAnswer(
          context,
          'The videos will be streamed live on our dedicated Youtube channel.',
        ),
        SizedBox(
          height: 15.0,
        ),
        buildQuestion(
          context,
          'Will presentations be available after each event?',
        ),
        SizedBox(
          height: 15.0,
        ),
        buildAnswer(
          context,
          'A few days after each talk, we will post them on a dedicated YouTube playlist.',
        ),
        SizedBox(
          height: 15.0,
        ),
        buildQuestion(
          context,
          'Will the conference be fully in English?',
        ),
        SizedBox(
          height: 15.0,
        ),
        buildAnswer(
          context,
          'Yes, the official language is English.',
        ),
        SizedBox(
          height: 15.0,
        ),
        buildQuestion(
          context,
          'What do I need to bring with me?',
        ),
        SizedBox(
          height: 15.0,
        ),
        buildAnswer(
          context,
          'You don`t need anything extra to fully attend the event. Although we recommend charging your phone. ;)',
        ),
        SizedBox(
          height: 15.0,
        ),
      ],
    );
  }

  Container buildAnswer(BuildContext context, @required String answer) {
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

  Container buildQuestion(BuildContext context, @required String question) {
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

AssetImage CircleLogo(String string) {
  if (string.isEmpty) {
    return AssetImage('assets/Organizer_Logo/flutter_surat_logo.jpg');
  }
  return AssetImage(string);
}
