import 'dart:convert';

import 'package:FlutterConIndia2020/Responsive.dart';
import 'package:FlutterConIndia2020/utils/con_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
//
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
              height: MediaQuery.of(context).size.height / 2,
              child: Image.asset(
                'assets/Twitter_Cover.png',
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: 30, right: 100.0, top: 7.0, bottom: 7.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'What is Flutter Con India?',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 30.0
                              : 45.0,
                          color: Colors.black,
//color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'assets/fonts/ProductSans.ttf',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: ResponsiveWidget.isSmallScreen(context)
                            ? 30.0
                            : 30.0,
                        right: 100.0,
                        top: 7.0,
                        bottom: 7.0),
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
                    padding: EdgeInsets.only(
                        left: ResponsiveWidget.isSmallScreen(context)
                            ? 30.0
                            : 30.0,
                        right: 30.0,
                        top: 7.0,
                        bottom: 7.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'When? ⏰️',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 30.0
                              : 45.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'assets/fonts/ProductSans.ttf',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left:
                          ResponsiveWidget.isSmallScreen(context) ? 30.0 : 30.0,
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
                    padding: EdgeInsets.only(
                      left: ResponsiveWidget.isSmallScreen(context)
                          ? 30.0
                          : 200.0,
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
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 30.0
                              : 45.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'assets/fonts/ProductSans.ttf',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: ResponsiveWidget.isSmallScreen(context)
                          ? 30.0
                          : 200.0,
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
                    padding: EdgeInsets.only(
                      left: ResponsiveWidget.isSmallScreen(context)
                          ? 30.0
                          : 200.0,
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
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 30.0
                              : 45.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'assets/fonts/ProductSans.ttf',
                          wordSpacing: 0.2,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: ResponsiveWidget.isSmallScreen(context)
                          ? 30.0
                          : 200.0,
                      right: 100.0,
                      top: 7.0,
                      bottom: 7.0,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'It’s not about source code. It’s about people! Want to meet the most recognizable Flutter developers from Europe and talk with them? This is the place! Flutter Europe is the easiest way to become a part of the greatest developers community ever.',
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
//                  ButtonTheme(
//                    child: RaisedButton(
//                      padding: EdgeInsets.all(10.0),
//                      color: Colors.red,
//                      onPressed: () {},
//                      child: Text(
//                        'Watch Live',
//                        style: TextStyle(
//                          color: Colors.white,
//                          fontFamily: 'assets/fonts/ProductSans.ttf',
//                          fontSize: ResponsiveWidget.isSmallScreen(context)
//                              ? 15.0
//                              : 35.0,
//                        ),
//                      ),
//                      shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(20.0),
//                        side: BorderSide(color: primaryColor, width: 5.0),
//                      ),
//                    ),
//                  ),
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: RichText(
                              text: TextSpan(
                                text: 'Want to be a ',
                                style: TextStyle(
                                  fontSize:
                                      ResponsiveWidget.isSmallScreen(context)
                                          ? 25.0
                                          : 45.0,
                                  color: Colors.white,
                                  fontFamily: 'assets/fonts/ProductSans.ttf',
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Speaker?', style: TextStyle()),
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
                              'If you`re a Flutter Expert, you can help the Flutter Community thrive',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 15.0
                                        : 35.0,
                                fontFamily: 'assets/fonts/ProductSans.ttf',
                                color: Colors.yellowAccent,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          RaisedButton(
                            elevation: 10.0,
                            splashColor: Colors.red,
                            hoverColor: Colors.greenAccent,
                            hoverElevation: 10.0,
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  ResponsiveWidget.isSmallScreen(context)
                                      ? 50.0
                                      : 100.0,
                              vertical: 30.0,
                            ),
                            color: primaryColor,
                            onPressed: () async {
                              await Future.delayed(Duration(milliseconds: 250));
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
                            height: ResponsiveWidget.isSmallScreen(context)
                                ? 80
                                : 60.0,
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
              height: ResponsiveWidget.isSmallScreen(context)
                  ? MediaQuery.of(context).size.height * 0.8
                  : MediaQuery.of(context).size.height * 1,
              color: Colors.white,
//              child: Center(
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Text(
//                      'Stay tuned for more info!',
//                      style: TextStyle(
//                        color: Color(0xFF1B36FF),
//                        fontSize: ResponsiveWidget.isSmallScreen(context)
//                            ? 25.0
//                            : 45.0,
//                      ),
//                    ),
//                    SizedBox(
//                      height: 10.0,
//                    ),
//                    Image.asset(
//                      'assets/doughnut.png',
//                      filterQuality: FilterQuality.high,
//                      scale: ResponsiveWidget.isSmallScreen(context) ? 5 : 2,
//                    ),
//                  ],
//                ),
//              ),

              child: FAQSection(),
            ),
            Container(
              color: primaryColor,
              width: double.infinity,
              height: ResponsiveWidget.isSmallScreen(context)
                  ? MediaQuery.of(context).size.height * 0.5
                  : MediaQuery.of(context).size.height * 0.9,
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
//                  Flexible(
//                    child: GridView.count(
//                      crossAxisCount: 2,
//                      //physics: NeverScrollableScrollPhysics(),
////                mainAxisSpacing: 2.0,
////                crossAxisSpacing: 2.0,
//                      childAspectRatio: ResponsiveWidget.isSmallScreen(context)
//                          ? 15 / 2
//                          : 15 / 2,
//                      shrinkWrap: true,
//                      children: <Widget>[
//                        GestureDetector(
//                          onTap: () async {
//                            String url =
//                                "https://www.meetup.com/Mumbai-Flutter";
//                            if (await canLaunch(url)) {
//                              await launch(url);
//                            } else {
//                              throw 'Could not launch $url';
//                            }
//                          },
//                          child: Center(
//                            child: Text(
//                              'Flutter Mumbai',
//                              style: TextStyle(
//                                color: Colors.white,
//                                fontSize:
//                                    ResponsiveWidget.isSmallScreen(context)
//                                        ? 15.0
//                                        : 35.0,
//                              ),
//                              textAlign: TextAlign.left,
//                            ),
//                          ),
//                        ),
//                        GestureDetector(
//                          onTap: () async {
//                            String url = "https://www.meetup.com/FlutterAHM";
//                            if (await canLaunch(url)) {
//                              await launch(url);
//                            } else {
//                              throw 'Could not launch $url';
//                            }
//                          },
//                          child: Center(
//                            child: Text(
//                              'Flutter Ahemdabad',
//                              style: TextStyle(
//                                color: Colors.white,
//                                fontSize:
//                                    ResponsiveWidget.isSmallScreen(context)
//                                        ? 15.0
//                                        : 35.0,
//                              ),
//                              textAlign: TextAlign.left,
//                            ),
//                          ),
//                        ),
//                        GestureDetector(
//                          onTap: () async {
//                            String url = "https://twitter.com/fluttervadodara";
//                            if (await canLaunch(url)) {
//                              await launch(url);
//                            } else {
//                              throw 'Could not launch $url';
//                            }
//                          },
//                          child: Center(
//                            child: Text(
//                              'Flutter Vadodara',
//                              style: TextStyle(
//                                color: Colors.white,
//                                fontSize:
//                                    ResponsiveWidget.isSmallScreen(context)
//                                        ? 15.0
//                                        : 35.0,
//                              ),
//                              textAlign: TextAlign.left,
//                            ),
//                          ),
//                        ),
//                        GestureDetector(
//                          onTap: () async {
//                            String url =
//                                "https://www.meetup.com/Gwalior-Flutter-Meetup-Group";
//                            if (await canLaunch(url)) {
//                              await launch(url);
//                            } else {
//                              throw 'Could not launch $url';
//                            }
//                          },
//                          child: Center(
//                            child: Text(
//                              'Flutter Gwalior',
//                              style: TextStyle(
//                                color: Colors.white,
//                                fontSize:
//                                    ResponsiveWidget.isSmallScreen(context)
//                                        ? 15.0
//                                        : 35.0,
//                              ),
//                              textAlign: TextAlign.left,
//                            ),
//                          ),
//                        ),
//                        GestureDetector(
//                          onTap: () async {
//                            String url =
//                                "https://www.meetup.com/Gwalior-Flutter-Meetup-Group";
//                            if (await canLaunch(url)) {
//                              await launch(url);
//                            } else {
//                              throw 'Could not launch $url';
//                            }
//                          },
//                          child: Center(
//                            child: Text(
//                              'Flutter Pune',
//                              style: TextStyle(
//                                color: Colors.white,
//                                fontSize:
//                                    ResponsiveWidget.isSmallScreen(context)
//                                        ? 15.0
//                                        : 35.0,
//                              ),
//                              textAlign: TextAlign.left,
//                            ),
//                          ),
//                        ),
//                        GestureDetector(
//                          onTap: () async {
//                            String url =
//                                "https://www.meetup.com/Flutter-Hyderabad";
//                            if (await canLaunch(url)) {
//                              await launch(url);
//                            } else {
//                              throw 'Could not launch $url';
//                            }
//                          },
//                          child: Center(
//                            child: Text(
//                              'Flutter Hyderabad',
//                              textAlign: TextAlign.left,
//                              style: TextStyle(
//                                color: Colors.white,
//                                fontSize:
//                                    ResponsiveWidget.isSmallScreen(context)
//                                        ? 15.0
//                                        : 35.0,
//                              ),
//                            ),
//                          ),
//                        ),
//                        GestureDetector(
//                          onTap: () async {
//                            String url = "https://www.meetup.com/FlutterSurat";
//                            if (await canLaunch(url)) {
//                              await launch(url);
//                            } else {
//                              throw 'Could not launch $url';
//                            }
//                          },
//                          child: Center(
//                            child: Text(
//                              'Flutter Surat',
//                              textAlign: TextAlign.left,
//                              style: TextStyle(
//                                color: Colors.white,
//                                fontSize:
//                                    ResponsiveWidget.isSmallScreen(context)
//                                        ? 15.0
//                                        : 35.0,
//                              ),
//                            ),
//                          ),
//                        ),
//                        GestureDetector(
//                          onTap: () async {
//                            String url = "https://www.meetup.com/flutterngp";
//                            if (await canLaunch(url)) {
//                              await launch(url);
//                            } else {
//                              throw 'Could not launch $url';
//                            }
//                          },
//                          child: Center(
//                            child: Text(
//                              'Flutter Nagpur',
//                              style: TextStyle(
//                                color: Colors.white,
//                                fontSize:
//                                    ResponsiveWidget.isSmallScreen(context)
//                                        ? 15.0
//                                        : 35.0,
//                              ),
//                              textAlign: TextAlign.left,
//                            ),
//                          ),
//                        ),
//                        GestureDetector(
//                          onTap: () async {
//                            String url =
//                                "https://www.meetup.com/flutter-bangalore-group";
//                            if (await canLaunch(url)) {
//                              await launch(url);
//                            } else {
//                              throw 'Could not launch $url';
//                            }
//                          },
//                          child: Center(
//                            child: Text(
//                              'Flutter Bangalore',
//                              textAlign: TextAlign.left,
//                              style: TextStyle(
//                                color: Colors.white,
//                                fontSize:
//                                    ResponsiveWidget.isSmallScreen(context)
//                                        ? 15.0
//                                        : 35.0,
//                              ),
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
                  Flexible(
                    child: FutureBuilder(
                      future: rootBundle.loadString(Con_Info.organizerjson),
                      builder: (context, snapshot) {
                        var new_Data = json.decode(snapshot.data.toString());
                        print(new_Data);
                        return GridView.builder(
                          itemCount: 9,
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio:
                                ResponsiveWidget.isSmallScreen(context)
                                    ? 15 / 2
                                    : 10 / 2,
                            mainAxisSpacing: 80.0,
                            crossAxisCount:
                                ResponsiveWidget.isSmallScreen(context) ? 2 : 3,
                          ),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundImage:
                                      CircleLogo(new_Data[index]["logo"]),
                                  backgroundColor: Colors.black,
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      new_Data[index]["organizer_name"],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            ResponsiveWidget.isSmallScreen(
                                                    context)
                                                ? 15.0
                                                : 25.0,
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          OrganizerMeetup(
                                              string: new_Data[index]
                                                  ["meetup_handle"]),
                                          SizedBox(
                                            width: 15.0,
                                          ),
                                          OrganizerTwitter(
                                            string: new_Data[index]
                                                ["twitter_handle"],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            );
                          },
                        );
                      },
                    ),
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
