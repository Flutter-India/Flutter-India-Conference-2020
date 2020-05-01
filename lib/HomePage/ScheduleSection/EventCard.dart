import 'package:FlutterConIndia2020/HomePage/Responsiveness/Responsive.dart';
import 'package:FlutterConIndia2020/utils/con_Info.dart';
import 'package:flutter/material.dart';


class EventCard extends StatelessWidget {
  const EventCard({
    Key key,
    this.eventName,
    this.speakerName,
    this.image,
    this.time,
  }) : super(key: key);

  final String eventName;
  final String speakerName;
  final String image;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 45.0,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(image),
          ),
          SizedBox(
            width: 10.0,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  eventName,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: Con_Info.fontfamily,
                    fontWeight: FontWeight.bold,
                    fontSize:
                        ResponsiveWidget.isSmallScreen(context) ? 15.0 : 25.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  speakerName,
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: TextStyle(
                      fontFamily: Con_Info.fontfamily,
                      fontWeight: FontWeight.w400,
                      fontSize:
                          ResponsiveWidget.isSmallScreen(context) ? 13.0 : 25.0,
                      color: Colors.white),
                ),
                Text(
                  time,
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: TextStyle(
                    fontFamily: Con_Info.fontfamily,
                    fontWeight: FontWeight.w200,
                    fontSize:
                        ResponsiveWidget.isSmallScreen(context) ? 12.0 : 22.0,
                    color: Colors.white,
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
