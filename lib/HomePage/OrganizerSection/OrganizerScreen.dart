import 'dart:convert';

import 'package:FlutterConIndia2020/utils/con_Info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../FAQ/FAQ.dart';
import '../Responsiveness/Responsive.dart';
import 'Organizerhandle.dart';

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
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 20.0,
                  color: Colors.black,
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
                                circleLogo(new_Data[index]["logo"]),
                            backgroundColor: Colors.black,
                            radius: ResponsiveWidget.isSmallScreen(context)
                                ? 20.0
                                : 30.0,
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
                ),
              ));

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
