import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Responsiveness/Responsive.dart';

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
        radius: ResponsiveWidget.isSmallScreen(context) ? 20.0 : 30.0,
        backgroundImage: AssetImage('assets/Images/socialIcons/meetup.png'),
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
        radius: ResponsiveWidget.isSmallScreen(context) ? 20.0 : 30.0,
        backgroundImage: AssetImage('assets/Images/socialIcons/twitter.png'),
      ),
    );
  }
}
