import 'dart:convert';

import 'package:FlutterConIndia2020/HomePage/Responsiveness/Responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hover_effect/hover_effect.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/con_Info.dart';

class SpeakerScreen extends StatefulWidget {
  @override
  _SpeakerScreenState createState() => _SpeakerScreenState();
}

class _SpeakerScreenState extends State<SpeakerScreen> {
  var new_speaker_Data;
  List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        String jsonnewData = await rootBundle.loadString(Con_Info.speakersjson);
        new_speaker_Data = json.decode(jsonnewData.toString());
        print(new_speaker_Data);
        widgets = List.generate(
          new_speaker_Data.length,
          (index) => GestureDetector(
            onTap: () async {
              String url = new_speaker_Data[index]["twitter_handle"];
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: SizedBox(
              height: ResponsiveWidget.isSmallScreen(context) ? 150.0 : 400.0,
              width: ResponsiveWidget.isSmallScreen(context) ? 150.0 : 400.0,
              child: HoverCard(
                builder: (context, hovering) {
                  return Card(
                    elevation: 10.0,
                    borderOnForeground: true,
                    child: Container(
                      width: 100,
                      height: 400,
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 25.0,
                                  ),
                                  child: Container(
                                    color: Colors.white70,
                                    height:
                                        ResponsiveWidget.isSmallScreen(context)
                                            ? 40
                                            : 80,
                                    width:
                                        ResponsiveWidget.isSmallScreen(context)
                                            ? 100
                                            : 250,
                                    child: Center(
                                      child: Text(
                                        new_speaker_Data[index]["Speaker_name"],
                                        textAlign: TextAlign.left,
                                        softWrap: true,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              ResponsiveWidget.isSmallScreen(
                                            context,
                                          )
                                                  ? 9.0
                                                  : 20.0,
                                          fontFamily: Con_Info.fontfamily,
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
                      decoration: BoxDecoration(
                        image: SpeakerImage(index),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );

        setState(() {});
      },
    );
  }

  DecorationImage SpeakerImage(int index) {
    if (new_speaker_Data[index]["logo"].isEmpty) {
      return DecorationImage(
        fit: BoxFit.cover,
        colorFilter: new ColorFilter.mode(
            Colors.black.withOpacity(0.4), BlendMode.darken),
        image: AssetImage(
          'assets/Images/Logos/Organizer_Logo/flutter_surat_logo.jpg',
        ),
      );
    }
    return DecorationImage(
      fit: BoxFit.cover,
      colorFilter: new ColorFilter.mode(
        Colors.black.withOpacity(0.2),
        BlendMode.dstATop,
      ),
      image: NetworkImage(
        new_speaker_Data[index]["logo"],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new_speaker_Data == null
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
