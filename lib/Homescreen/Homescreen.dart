import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:protfolietaha/constant.dart';
import 'package:protfolietaha/infowidget/ui_components/info_widget.dart';
import 'package:protfolietaha/service/service.dart';
import '../aboutsection/aboutsection.dart';
import '../conectet/conect.dart';
import '../recentworks/recentmyWork.dart';
import '../skiils/skills.dart';
import 'widget/menue.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme styel = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              constraints: BoxConstraints(
                maxHeight: 900,
                minHeight: 400,
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: NetworkImage('images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              width: double.infinity,
              child: InfoWidget(
                builder: (context, deviceInfo) {
                  return Container(
                    alignment: Alignment.center,
                    width: deviceInfo.localWidth * 0.75,
                    height: deviceInfo.localHeight * 0.9,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              'images/skill/t.png',
                              width: 70,
                              height: 70,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.white.withOpacity(0.4),
                                  constraints: BoxConstraints(
                                      maxWidth: deviceInfo.localWidth * 0.6,
                                      maxHeight: deviceInfo.localHeight * 0.7),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: deviceInfo.localWidth * 0.02),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          hallo,
                                          style: styel.headline5!
                                              .copyWith(color: Colors.white),
                                        ),
                                        Text(
                                          name,
                                          style: styel.headline1!.copyWith(
                                              fontWeight: FontWeight.bold,
                                              height: 1.3,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          track,
                                          style: styel.headline4!.copyWith(
                                              fontWeight: FontWeight.bold,
                                              height: 1.3,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          bottom: 0,
                          right: -10,
                          child: Container(
                            constraints: BoxConstraints(
                                maxHeight: deviceInfo.localHeight * 0.9,
                                maxWidth: deviceInfo.localWidth * 0.27),
                            child: Image.asset('images/person.png'),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Menu(),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 450,
              child: AboutSection(),
            ),
            Container(
              height: 1210,
              child: skills(),
            ),
            Container(
              alignment: Alignment.center,
              height: 650,
              child: service(),
            ),
            Container(
              alignment: Alignment.center,
              child: RecentWorkSection(),
            ),
            // Container(
            //   child: fedback(),
            // ),
            Container(
              child: conect(),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
