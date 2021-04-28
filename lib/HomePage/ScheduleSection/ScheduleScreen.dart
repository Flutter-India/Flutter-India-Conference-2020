import 'package:FlutterConIndia2020/HomePage/Responsiveness/Responsive.dart';
import 'package:FlutterConIndia2020/utils/con_Info.dart';
import 'package:flutter/material.dart';

import 'EventCard.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: _index,
      onStepTapped: (index) {
        setState(() {
          _index = index;
        });
      },
      steps: [
        Step(
          title: Text(
            'Day 1',
            style: TextStyle(
              color: Colors.white,
              fontFamily: Con_Info.fontfamily,
              fontSize: 25.0,
            ),
          ),
          content: Column(
            children: <Widget>[
              EventCard(
                eventName: 'Opening Keynote',
                speakerName: 'Nilay Yener',
                image: "https://i.ibb.co/YPGk4ts/1538867099796.jpg",
                time: '20:30 - 21:00 IST',
              ),
              SizedBox(
                height: 50,
              ),
              EventCard(
                eventName: 'Grips of Flutter futures and async',
                speakerName: "Gazihan Alankus",
                image: "https://i.ibb.co/ZdKzwyk/412997.jpg",
                time: '21:10 - 21:50 IST',
              ),
              SizedBox(
                height: 50,
              ),
              EventCard(
                eventName: 'Responsive Web Apps in Flutter',
                speakerName: "Hasnen Tai",
                image: "https://i.ibb.co/bRmnbVX/1577189169479.jpg",
                time: '22:00 - 22:40 IST',
              ),
            ],
          ),
          state: StepState.indexed,
          isActive: true,
        ),
        Step(
          isActive: true,
          title: Text(
            'Day 2',
            style: TextStyle(
              color: Colors.white,
              fontFamily: Con_Info.fontfamily,
              fontSize: 25.0,
            ),
          ),
          content: Column(
            children: <Widget>[
              EventCard(
                eventName: 'Efficient Internationalization of Flutter Apps',
                speakerName: 'Dominik Roszkowski',
                image: "https://i.ibb.co/Wx2TLR4/1605258985165.jpg",
                time: '20:30 - 21:10 IST',
              ),
              SizedBox(
                height: 50,
              ),
              EventCard(
                eventName: 'State Management in Flutter',
                speakerName: "Bhavesh Daswani",
                image: "https://i.ibb.co/t21GP9v/1593144268626.jpg",
                time: '21:20 - 22:00 IST',
              ),
              SizedBox(
                height: 50,
              ),
              EventCard(
                eventName: "What's new in Flutter Design Engineering",
                speakerName: "Will Larche",
                image: "https://i.ibb.co/5xvMjgv/1564173203214.jpg",
                time: '22:10 - 22:40 IST',
              ),
            ],
          ),
        ),
        Step(
          isActive: true,
          title: Text(
            'Day 3',
            style: TextStyle(
              color: Colors.white,
              fontFamily: Con_Info.fontfamily,
              fontSize: 25.0,
            ),
          ),
          content: Column(
            children: <Widget>[
              EventCard(
                eventName:
                    'Scaling Flutter Architecture by Leveraging strategic Domain-Driven Design',
                speakerName: 'Majid Hajian',
                image: "https://i.ibb.co/vD26Pvc/1613316921147.jpg",
                time: '20:30 - 21:10 IST',
              ),
              SizedBox(
                height: 50,
              ),
              Card(
                color: Colors.black,
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius:
                          ResponsiveWidget.isSmallScreen(context) ? 30.0 : 45.0,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://i.ibb.co/DtjL0Jn/1553373963950.jpg'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    CircleAvatar(
                      radius:
                          ResponsiveWidget.isSmallScreen(context) ? 30.0 : 45.0,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        'https://i.ibb.co/DL1dfg9/1550405718408.jpg',
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Mastering written Flutter Content',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: Con_Info.fontfamily,
                              fontWeight: FontWeight.bold,
                              fontSize: ResponsiveWidget.isSmallScreen(context)
                                  ? 15.0
                                  : 25.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Deven Joshi, Pooja Bhaumik',
                            textAlign: TextAlign.left,
                            softWrap: true,
                            style: TextStyle(
                                fontFamily: Con_Info.fontfamily,
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 13.0
                                        : 25.0,
                                color: Colors.white),
                          ),
                          Text(
                            '21:20 - 22:00 IST',
                            textAlign: TextAlign.left,
                            softWrap: true,
                            style: TextStyle(
                              fontFamily: Con_Info.fontfamily,
                              fontWeight: FontWeight.w200,
                              fontSize: ResponsiveWidget.isSmallScreen(context)
                                  ? 12.0
                                  : 22.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              EventCard(
                eventName: 'Ending Keynote',
                speakerName: "Nikita Gandhi",
                image: "https://i.ibb.co/kgwsrWc/1578467205054.jpg",
                time: '22:10 - 22:50 IST',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
