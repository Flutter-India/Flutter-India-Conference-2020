import 'package:flutter/material.dart';

import 'QNA.dart';

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
        QNA.buildQuestion(
          context,
          'How can i propose the talk?',
        ),
        SizedBox(
          height: 15.0,
        ),
        QNA.buildAnswer(
          context,
          'You can fill the form by clicking Call for Speakers',
        ),
        SizedBox(
          height: 15.0,
        ),
        QNA.buildQuestion(
          context,
          'Where will the sessions be broadcast?',
        ),
        SizedBox(
          height: 15.0,
        ),
        QNA.buildAnswer(
          context,
          'The videos will be streamed live on our dedicated Youtube channel.',
        ),
        SizedBox(
          height: 15.0,
        ),
        QNA.buildQuestion(
          context,
          'Will presentations be available after each event?',
        ),
        SizedBox(
          height: 15.0,
        ),
        QNA.buildAnswer(
          context,
          'A few days after each talk, we will post them on a dedicated YouTube playlist.',
        ),
        SizedBox(
          height: 15.0,
        ),
        QNA.buildQuestion(
          context,
          'Will the conference be fully in English?',
        ),
        SizedBox(
          height: 15.0,
        ),
        QNA.buildAnswer(
          context,
          'Yes, the official language is English.',
        ),
        SizedBox(
          height: 15.0,
        ),
        QNA.buildQuestion(
          context,
          'What do I need to bring with me?',
        ),
        SizedBox(
          height: 15.0,
        ),
        QNA.buildAnswer(
          context,
          'You don`t need anything extra to fully attend the event. Although we recommend charging your phone. ;)',
        ),
        SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}

AssetImage CircleLogo(String string) {
  if (string.isEmpty) {
    return AssetImage('assets/Organizer_Logo/flutter_surat_logo.jpg');
  }
  return AssetImage(string);
}
