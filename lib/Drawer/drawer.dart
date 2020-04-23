import 'package:flutter/material.dart';
import 'package:fluttercon/OrganizerListScreen.dart';
import 'package:fluttercon/Sponsors.dart';
import 'package:fluttercon/utils/con_info.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreenDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF1B36FF),
            ),
            child: Image.asset('assets/cover_image_1.png'),
          ),
          _createDrawerItem(
            icon: FontAwesomeIcons.calendarAlt,
            text: 'Schedule',
          ),
//          Divider(
//            color: Colors.grey,
//          ),
          SizedBox(
            height: 10.0,
          ),
          _createDrawerItem(
            icon: FontAwesomeIcons.brain,
            text: 'Organizers',
            onTap: () =>
                Navigator.of(context).pushNamed(OrganizerListScreen.tag),
          ),
//          Divider(
//            color: Colors.grey,
//          ),
          SizedBox(
            height: 10.0,
          ),
          _createDrawerItem(
            icon: FontAwesomeIcons.moneyBill,
            text: 'Our Sponsors',
            onTap: () => Navigator.of(context).pushNamed(SponsorScreen.tag),
          ),
//          Divider(
//            color: Colors.grey,
//          ),
//          _createDrawerItem(
//            icon: FontAwesomeIcons.code,
//            text: 'Code of Conduct',
//          ),
//          Divider(
//            color: Colors.grey,
//          ),
          SizedBox(
            height: 10.0,
          ),
          _createDrawerItem(
            icon: FontAwesomeIcons.info,
            text: 'About the App',
          ),
//          Divider(
//            color: Colors.grey,
//          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.facebook,
                  color: Color(0xFF1B36FF),
                ),
                onPressed: () async {
                  String url = "https://www.facebook.com/IndiaFlutter";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.blue,
                ),
                onPressed: () async {
                  String url = "https://twitter.com/IndiaFlutter";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(Con_Info.app_version),
          ),
        ],
      ),
    );
  }
}

Widget _createDrawerItem({
  IconData icon,
  String text,
  GestureTapCallback onTap,
}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xFF1B36FF),
        ),
        Padding(
          padding: EdgeInsets.only(left: 19.0),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'assets/fonts/ProductSans.ttf',
              fontSize: 17.0,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
