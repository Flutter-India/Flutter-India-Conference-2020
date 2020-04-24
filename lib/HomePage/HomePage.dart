import 'package:FlutterConIndia2020/Responsive.dart';
import 'package:FlutterConIndia2020/utils/con_info.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  static const String tag = '/HomePage';
  GlobalKey<FormState> _scaffoldkey = GlobalKey();
  Color primaryColor = Color(0xFF1E40FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
//drawer: MainScreenDrawer(),
      resizeToAvoidBottomPadding: true,
//      appBar: AppBar(
//        automaticallyImplyLeading: true,
//        iconTheme: IconThemeData(
//          color: Color(0xFF1B36FF),
//          size: 36.0,
//        ),
//
//        //backgroundColor: Color(0xFF1B36FF),
//        backgroundColor: Colors.white,
//        elevation: 4.0,
//        bottomOpacity: 0.0,
//        actions: <Widget>[
//          IconButton(
//            onPressed: () => Share.share(
//              "Download the new Flutter India Conference App and share with your friends.\nPlayStore link will be provided later",
//            ),
//            icon: Icon(
//              Icons.share,
//            ),
//          ),
//        ],
//      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
//padding: EdgeInsets.only(top: 50.0, bottom: 25.0),
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/cover_image_1.png',
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
//            SizedBox(
//              height: 20.0,
//            ),
//            Text(
//              Con_Info.welcomeText,
//              textAlign: TextAlign.center,
//              style: Theme.of(context).textTheme.headline5,
//            ),

            Container(
              margin: EdgeInsets.only(
                top: 70.0,
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 7.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'What is Flutter Con India?',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 30.0
                              : 55.0,
                          color: Colors.black,
//color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'assets/fonts/ProductSans.ttf',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 7.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        Con_Info.descriptionText,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Color(0xFF1B36FF),
//color: Colors.white70,
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 15.0
                              : 25.0,

                          fontFamily: 'assets/fonts/ProductSans.ttf',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 7.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'When?',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 30.0
                              : 55.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'assets/fonts/ProductSans.ttf',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 7.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        Con_Info.eventtime,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Color(0xFF1B36FF),
//color: Colors.white70,
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 15.0
                              : 25.0,
                          fontFamily: 'assets/fonts/ProductSans.ttf',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
//            Padding(
//              padding: const EdgeInsets.only(
//                bottom: 12.0,
//              ),
//              child: Center(
//                child: FlatButton(
//                  onPressed: () {},
//                  color: Color(0xFF1B36FF),
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(10.0)),
//                  child: Text(
//                    'Add to Calendar',
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontFamily: 'assets/fonts/Product-Sans-Regular.ttf',
//                    ),
//                  ),
//                ),
//              ),
//            ),
                ],
              ),
            ),

            Stack(
              children: <Widget>[
                Container(
                  color: primaryColor,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.8,
                  margin: EdgeInsets.only(top: 90.0),
                ),
                Container(
                  margin: EdgeInsets.only(top: 70),
                  child: Padding(
                    padding: EdgeInsets.only(top: 135.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FlatButton(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  ResponsiveWidget.isSmallScreen(context)
                                      ? 50.0
                                      : 100.0,
                              vertical: 30.0,
                            ),
                            color: Colors.transparent,
                            onPressed: () async {
                              String url =
                                  'https://sessionize.com/FlutterConIN2020/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(color: Colors.white, width: 5.0),
                            ),
                            child: Text(
                              'Call for Speakers',
                              style: TextStyle(
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 25.0
                                        : 45.0,
                                color: Colors.white,
                                fontFamily: 'assets/fonts/ProductSans.ttf',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 90.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Sponsored By',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 25.0
                                        : 35.0,
                                color: Colors.white,
                                fontFamily: 'assets/fonts/ProductSans.ttf',
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
                                      ResponsiveWidget.isSmallScreen(context)
                                          ? 25.0
                                          : 35.0,
                                  color: Colors.white,
                                  fontFamily: 'assets/fonts/ProductSans.ttf',
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Stay tuned for more info!',
                        style: TextStyle(
                          color: Color(0xFF1B36FF),
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 25.0
                              : 45.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Image.asset(
                        'assets/doughnut.png',
                        filterQuality: FilterQuality.high,
                        scale: ResponsiveWidget.isSmallScreen(context) ? 5 : 2,
                      ),
                    ],
                  ),
                )),
            Container(
              color: primaryColor,
              width: double.infinity,
              height: ResponsiveWidget.isSmallScreen(context)
                  ? MediaQuery.of(context).size.height * 0.5
                  : MediaQuery.of(context).size.height * 0.9,
              margin: EdgeInsets.only(
                top: 90.0,
              ),
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
                  Flexible(
                    child: GridView.count(
                      crossAxisCount: 2,
                      //physics: NeverScrollableScrollPhysics(),
//                mainAxisSpacing: 2.0,
//                crossAxisSpacing: 2.0,
                      childAspectRatio: ResponsiveWidget.isSmallScreen(context)
                          ? 15 / 2
                          : 15 / 2,
                      shrinkWrap: true,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () async {
                            String url =
                                "https://www.meetup.com/Mumbai-Flutter";
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Center(
                            child: Text(
                              'Flutter Mumbai',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 15.0
                                        : 35.0,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            String url = "https://www.meetup.com/FlutterAHM";
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Center(
                            child: Text(
                              'Flutter Ahemdabad',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 15.0
                                        : 35.0,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            String url = "https://twitter.com/fluttervadodara";
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Center(
                            child: Text(
                              'Flutter Vadodara',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 15.0
                                        : 35.0,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            String url =
                                "https://www.meetup.com/Gwalior-Flutter-Meetup-Group";
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Center(
                            child: Text(
                              'Flutter Gwalior',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 15.0
                                        : 35.0,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            String url =
                                "https://www.meetup.com/Gwalior-Flutter-Meetup-Group";
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Center(
                            child: Text(
                              'Flutter Pune',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 15.0
                                        : 35.0,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            String url =
                                "https://www.meetup.com/Flutter-Hyderabad";
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Center(
                            child: Text(
                              'Flutter Hyderabad',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 15.0
                                        : 35.0,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            String url = "https://www.meetup.com/FlutterSurat";
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Center(
                            child: Text(
                              'Flutter Surat',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 15.0
                                        : 35.0,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            String url = "https://www.meetup.com/flutterngp";
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Center(
                            child: Text(
                              'Flutter Nagpur',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 15.0
                                        : 35.0,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            String url =
                                "https://www.meetup.com/flutter-bangalore-group";
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Center(
                            child: Text(
                              'Flutter Bangalore',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 15.0
                                        : 35.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
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
                            fontSize: ResponsiveWidget.isSmallScreen(context)
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
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 20.0),
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
                                  radius:
                                      ResponsiveWidget.isSmallScreen(context)
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
                                  radius:
                                      ResponsiveWidget.isSmallScreen(context)
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
                                  radius:
                                      ResponsiveWidget.isSmallScreen(context)
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
                                  width: ResponsiveWidget.isSmallScreen(context)
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
                  fontSize:
                      ResponsiveWidget.isSmallScreen(context) ? 8.0 : 15.0,
                ),
              ),
            ),
            SizedBox(height: 10.0)
          ],
        ),
      ),
    );
  }
}
