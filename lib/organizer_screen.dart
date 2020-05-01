import 'dart:convert';

import 'package:FlutterConIndia2020/Responsive.dart';
import 'package:FlutterConIndia2020/utils/con_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'HomePage/HomePage.dart';

class OrganizerScreen extends StatefulWidget {
  @override
  _OrganizerScreenState createState() => _OrganizerScreenState();
}

class _OrganizerScreenState extends State<OrganizerScreen> {
  var new_Data;
  List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      String jsonData = await rootBundle.loadString(Con_Info.organizerjson);
      new_Data = json.decode(jsonData.toString());
      widgets = List.generate(
          9,
          (index) => SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      new_Data[index]["organizer_name"],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ResponsiveWidget.isSmallScreen(context)
                            ? 15.0
                            : 25.0,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                              CircleLogo(new_Data[index]["logoUrl"]),
                          backgroundColor: Colors.black,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        OrganizerMeetup(
                            string: new_Data[index]["meetup_handle"]),
                        SizedBox(
                          width: 15.0,
                        ),
                        OrganizerTwitter(
                          string: new_Data[index]["twitter_handle"],
                        ),
                      ],
                    ),
                  ],
                ),
              ));
//      await Future.delayed(Duration(seconds: 5));

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return new_Data == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Wrap(
            spacing: 20,
            runSpacing: 20,
            runAlignment: WrapAlignment.center,
            children: widgets,
          );
  }
}

NetworkImage CircleLogo(String string) {
  String defaultLogoUrl =
      "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png";

  return NetworkImage(string ?? defaultLogoUrl);
}
