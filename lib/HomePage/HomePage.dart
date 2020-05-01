import 'package:FlutterConIndia2020/background/graphic.dart';
import 'package:flutter/material.dart';
import 'package:motion_widget/motion_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ContactUs/ContactUs.dart';
import 'Intro/CoverImage.dart';
import 'Intro/mainIntro.dart';
import 'OrganizerSection/OrganizerSection.dart';
import 'PoweredBy/PoweredBy.dart';
import 'Responsiveness/Responsive.dart';
import 'ScheduleSection/ScheduleSection.dart';
import 'SpeakerSection/SpeakerScreen.dart';

class HomePageNew extends StatelessWidget {
  static const String tag = '/HomePageNew';
  final String primaryFont = 'assets/fonts/ProductSans.ttf';
  final String coverImage =
      'assets/Images/Logos/FlutterConLogos/Group_twenty.png';

  final MotionExitConfigurations motionExitConfigurations =
      MotionExitConfigurations(
    displacement: 200,
    orientation: MotionOrientation.LEFT,
    durationMs: 400,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: <Widget>[
          DiagonalApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                CoverImage(coverImage: coverImage),
                SizedBox(
                  width: ResponsiveWidget.isSmallScreen(context)
                      ? MediaQuery.of(context).size.width
                      : MediaQuery.of(context).size.width * 0.7,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 90.0),
                        width: double.infinity,
                        height: 400.0,
                        color: Color(0xffFF0000),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Streaming on',
                              style: TextStyle(
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 15.0
                                        : 35.0,
                                color: Colors.white,
                                fontFamily: 'Rocky Billy',
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
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
                              child: Image.asset(
                                'assets/Images/socialIcons/youtube_icon.png',
                                height: 50.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MainIntro(
                        motionExitConfigurations: motionExitConfigurations,
                      ),
                      Container(
                        color: Colors.black,
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 90.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                'Speakers',
                                style: TextStyle(
                                  fontSize:
                                      ResponsiveWidget.isSmallScreen(context)
                                          ? 35.0
                                          : 45.0,
                                  fontFamily: 'assets/fonts/ProductSans.ttf',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            SpeakerScreen(),
                            SizedBox(
                              height: 60,
                            ),
                          ],
                        ),
                      ),
                      ScheduleSection(
                          motionExitConfigurations: motionExitConfigurations),
                      OrganzerSection(),
                      SizedBox(
                        height: 90.0,
                      ),
                      PoweredBy(),
                      SizedBox(
                        height: 90.0,
                      ),
                      ContactUs(),
                      Container(
                        color: Colors.black,
                        width: double.infinity,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Made with Flutter 💙',
                              style: TextStyle(
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 8.0
                                        : 15.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        width: double.infinity,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Flutter and the related logo are trademarks of Google LLC. Flutter India is not affiliated with or otherwise sponsored by Google LLC.',
                              style: TextStyle(
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 8.0
                                        : 15.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
