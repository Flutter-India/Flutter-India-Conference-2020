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
                image:
                    "https://media-exp1.licdn.com/dms/image/C5603AQE28GphB8V4dw/profile-displayphoto-shrink_800_800/0?e=1593648000&v=beta&t=FEZhJm_ZZo37P13N5ubsL28bfayT30YxNo0vYWy6RaQ",
                time: '20:30 - 21:00 IST',
              ),
              SizedBox(
                height: 50,
              ),
              EventCard(
                eventName: 'Grips of Flutter futures and async',
                speakerName: "Gazihan Alankus",
                image:
                    "https://pbs.twimg.com/profile_images/993770834467713025/K5X6ep1z_400x400.jpg",
                time: '21:10 - 21:50 IST',
              ),
              SizedBox(
                height: 50,
              ),
              EventCard(
                eventName: 'Responsive Web Apps in Flutter',
                speakerName: "Hasnen Tai",
                image:
                    "https://media-exp1.licdn.com/dms/image/C5103AQFdQODgeXBrlw/profile-displayphoto-shrink_800_800/0?e=1593648000&v=beta&t=ndU5vjiI901UQWpxBFQMXdwloL7JxOJ7Jp5YVyTse9E",
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
                image:
                    "https://pbs.twimg.com/profile_images/1188517161192558593/gZC6Far3_400x400.jpg",
                time: '20:30 - 21:10 IST',
              ),
              SizedBox(
                height: 50,
              ),
              EventCard(
                eventName: 'State Management in Flutter',
                speakerName: "Bhavesh Daswani",
                image:
                    "https://pbs.twimg.com/profile_images/1250139555488862208/bsw1yfOC_400x400.jpg",
                time: '21:20 - 22:00 IST',
              ),
              SizedBox(
                height: 50,
              ),
              EventCard(
                eventName: "What's new in Flutter Design Engineering",
                speakerName: "Will Larche",
                image:
                    "https://media-exp1.licdn.com/dms/image/C4D03AQFrtI6urM2JqQ/profile-displayphoto-shrink_800_800/0?e=1593648000&v=beta&t=T3_RZMb4M9sqYNQXPuEty295eaXiQPie7XBAIVGKYfU",
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
                image:
                    "https://media-exp1.licdn.com/dms/image/C5603AQGK-HeI_eFltQ/profile-displayphoto-shrink_800_800/0?e=1593648000&v=beta&t=ZqZu8cD8_m3mxc3190309XwmRFXYkksNKfxn3XvuBG4",
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
                          'https://media-exp1.licdn.com/dms/image/C5103AQE6FmDS53qniw/profile-displayphoto-shrink_800_800/0?e=1593648000&v=beta&t=m1BAU9nuIzq9dB2Va1SdUmsjYf9AzPQanMu21FXcXT0'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    CircleAvatar(
                      radius:
                          ResponsiveWidget.isSmallScreen(context) ? 30.0 : 45.0,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        'https://pbs.twimg.com/profile_images/1185228274332397574/Mny9r1EW_400x400.jpg',
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
                image:
                    "https://pbs.twimg.com/profile_images/1143451540255956992/0AoRnzLP_400x400.jpg",
                time: '22:10 - 22:50 IST',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
