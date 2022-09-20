import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:protfolietaha/models/skills.dart';

import '../widget/sectiontile.dart';

class skills extends StatelessWidget {
  const skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme styel = Theme.of(context).textTheme;
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.symmetric(vertical: 20),
      constraints: BoxConstraints(
        maxWidth: 1200,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            constraints: BoxConstraints(
              maxWidth: 1200,
            ),
            height: 170,
            child: SectionTitle(
              title: "What can I do",
              subTitle: "My Skills",
              color: Color.fromARGB(255, 11, 114, 158),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'General Skills',
                style: styel.headline4!
                    .copyWith(color: Colors.black.withOpacity(0.8)),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: genralskills.length,
                  itemBuilder: (BuildContext context, int index) {
                    return pro(
                      image: genralskills[index].image,
                      text: genralskills[index].text,
                    );
                  },
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'My bascis',
                style: styel.headline4!
                    .copyWith(color: Colors.black.withOpacity(0.8)),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: basicskills.length,
                  itemBuilder: (BuildContext context, int index) {
                    return pro(
                      image: basicskills[index].image,
                      text: basicskills[index].text,
                    );
                  },
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Flutter',
                style: styel.headline4!
                    .copyWith(color: Colors.black.withOpacity(0.8)),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: flutterskills.length,
                  itemBuilder: (BuildContext context, int index) {
                    return pro(
                      image: flutterskills[index].image,
                      text: flutterskills[index].text,
                    );
                  },
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Backend',
                style: styel.headline4!
                    .copyWith(color: Colors.black.withOpacity(0.8)),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: backendskills.length,
                  itemBuilder: (BuildContext context, int index) {
                    return pro(
                      image: backendskills[index].image,
                      text: backendskills[index].text,
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class pro extends StatefulWidget {
  pro({
    required this.text,
    required this.image,
    Key? key,
  }) : super(key: key);
  String text;
  String image;

  @override
  State<pro> createState() => _proState();
}

class _proState extends State<pro> {
  @override
  Widget build(BuildContext context) {
    TextTheme styel = Theme.of(context).textTheme;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: AvatarGlow(
            glowColor: Colors.transparent,
            endRadius: 55.0,
            duration: Duration(milliseconds: 2000),
            repeat: true,
            showTwoGlows: true,
            repeatPauseDuration: Duration(milliseconds: 200),
            child: Material(
              elevation: 5.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(widget.image)),
                radius: 35.0,
              ),
            ),
          ),
        ),
        Text(
          widget.text,
          style: styel.headline5,
        )
      ],
    );
  }
}
