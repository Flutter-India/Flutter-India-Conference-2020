import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttercon/utils/con_info.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class OrganizerListScreen extends StatelessWidget {
  static const String tag = '/OrganizerList';
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Organizers'),
        backgroundColor: Color(0xFF1B36FF),
        actions: <Widget>[
          IconButton(
            onPressed: () => Share.share(
              "Download the new Flutter India Conference App and share with your friends.\nPlayStore link will be provided later",
            ),
            icon: Icon(
              Icons.share,
            ),
          ),
        ],
      ),
      body: FutureBuilder(
          future: rootBundle.loadString(Con_Info.organizerjson),
          builder: (context, snapshot) {
            var new_Data = json.decode(snapshot.data.toString());
            print(new_Data);
            return new ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 2.0,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage(new_Data[index]["logo"]),
                          minRadius: 45.0,
                          backgroundColor: Color(0xFF1B36FF),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    new_Data[index]["organizer_name"],
                                    style: TextStyle(
                                      fontFamily: Con_Info.fontfamily,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    new_Data[index]["small_description"],
                                    style: Theme.of(context).textTheme.subtitle,
                                    textAlign: TextAlign.justify,
                                  ),
                                  FittedBox(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(FontAwesomeIcons.meetup),
                                          onPressed: () {
                                            launch(new_Data[index]
                                                ["meetup_handle"]);
                                          },
                                        ),
                                        IconButton(
                                          icon: Icon(FontAwesomeIcons.twitter),
                                          onPressed: () async {
                                            String url = new_Data[index]
                                                ["twitter_handle"];
                                            if (await canLaunch(url)) {
                                              await launch(url);
                                            } else {
                                              throw 'Could not launch $url';
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black12)),
                );
              },
              itemCount: new_Data == null ? 0 : new_Data.length,
            );
          }),
    );
  }
}
