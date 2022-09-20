import 'package:flutter/material.dart';
import 'package:protfolietaha/constant.dart';
import 'package:protfolietaha/infowidget/ui_components/info_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import '../conectet/conect.dart';
import '../widget/defolutbuuten.dart';
import 'AboutSectionText.dart';
import 'widget/AboutTextWithSign.dart';
import 'widget/ExperienceCard.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme Textstyel = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1200, minWidth: 700),
      child: InfoWidget(
        builder: (context, deviceInfo) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AboutTextWithSign(),
                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(5),
                      width: deviceInfo.localWidth * 0.3,
                      height: 189,
                      child: AboutSectionText(
                        text: descrb1,
                      ),
                    ),
                    ExperienceCard(numOfExp: experience),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'More than 400 problem solution',
                          style: TextStyle(fontSize: 20),
                        ),
                        coneectme(
                          text: 'My Account Codeforce',
                          styel: true,
                          onPressed: () {
                            launchUrl(
                              Uri.parse(
                                  'https://codeforces.com/profile/taha_khaled132'),
                            );
                          },
                        ),
                        Text(
                          'More than 21 project ',
                          style: TextStyle(fontSize: 19),
                        ),
                        coneectme(
                          text: 'My Account GitHup',
                          styel: true,
                          onPressed: () {
                            launchUrl(
                              Uri.parse(
                                  'https://github.com/Taha-khaled1?tab=repositories'),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding * 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultButton(
                    imageSrc: "images/hand.png",
                    text: "Hire Me!",
                    press: () {},
                  ),
                  SizedBox(width: kDefaultPadding * 1.5),
                  DefaultButton(
                    imageSrc: "images/download.png",
                    text: "Download CV",
                    press: () {},
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
