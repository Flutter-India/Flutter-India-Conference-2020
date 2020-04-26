import 'package:flutter/material.dart';

class NewHomePage extends StatefulWidget {
  @override
  _NewHomePageState createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(

                          margin: EdgeInsets.all(24),

                          child: Image.asset(
                            'assets/Group 26.png',
                            height: MediaQuery
                                .of(context)
                                .size
                                .width / 4,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 4,
                            color: Colors.white,

                            fit: BoxFit.fitWidth,
                          ),
                        ),

                        Text(
                          'Let\'s\nbuild\ncommunity\ntogether',
                          style: TextStyle(color: Colors.white,
                              fontSize: 64,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Container(
//                          color: Color(0xff302EA7),
                          margin: EdgeInsets.only(left: 100),
                        ),
                        Container(
                          color: Colors.transparent,
                          child: Image.asset(
                            'assets/newHomePage.png',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
