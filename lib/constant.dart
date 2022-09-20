import 'package:flutter/material.dart';

const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// TextField dedign
final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

final kDefaultOutlineInputBorder = OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);

String name = 'Taha \nKhaled';
String experience = '01';
String hallo = 'Hallo There';
String track = 'Flutter Developer';
String descrb1 =
    ' I am Taha khaled , Flutter developer and I can write one code base for all The platforms,For example, Android, Ios, Web and I also have the knowledge Backend, so I can take responsibility for creating the application from the scratch until the last line of code in it ';
String descrb2 = '400 + ';
String descrb2b = 'problem solving solutions ';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.black,
  // minimumSize: Size(88, 44),
  padding: EdgeInsets.symmetric(
    vertical: kDefaultPadding,
    horizontal: kDefaultPadding * 2.5,
  ),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
  backgroundColor: Color(0xFFE8F0F9),
);
