import 'package:flutter/material.dart';
import 'package:share/share.dart';

class SponsorScreen extends StatelessWidget {
  static const String tag = '/SponsorScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Our Sponsors'),
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(45.0),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset('assets/Sponsors_Logo/slido_sponsor.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 12.0,
              ),
              child: Center(
                child: FlatButton(
                  padding: EdgeInsets.all(25.0),
                  onPressed: () {},
                  color: Color(0xFF1B36FF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    'Become Sponsor',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'assets/fonts/ProductSans.ttf',
                        fontSize: 25.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
