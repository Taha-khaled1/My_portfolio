import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constant.dart';
import '../skiils/skills.dart';
import '../widget/defolutbuuten.dart';
import '../widget/sectiontile.dart';

class conect extends StatelessWidget {
  const conect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      //height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For Project inquiry and information",
            color: Color(0xFF07E24A),
          ),
          ContactBox(),
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SocalCard(
                    color: Color(0xFFD9FFFC),
                    iconSrc: "images/telegram.png",
                    name: 'Taha Khaled',
                    press: () async {
                      await launchUrl(Uri.parse('https://t.me/opskwowo'));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SocalCard(
                    color: Color(0xFFE4FFC7),
                    iconSrc: "images/whatsapp.png",
                    name: 'Taha Khaled',
                    press: () {},
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SocalCard(
                        color: Color(0xFFE8F0F9),
                        iconSrc: "images/LinkedIn_icon_circle.svg.png",
                        name: 'Taha Khaled',
                        press: () async {
                          try {
                            await launchUrl(Uri.parse(
                                'https://www.linkedin.com/in/taha-khaled-b666531b4/'));
                          } catch (e) {}
                        })),
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'More conect',
                style: TextStyle(fontSize: 25),
              ),
              coneectme(text: 'tahakhaled419@gmail.com'),
              coneectme(text: '+201113051656'),
              coneectme(text: 'My Account Codeforce', styel: true),
              coneectme(text: 'My Account GitHup', styel: true),
            ],
          ),
        ],
      ),
    );
  }
}

class coneectme extends StatelessWidget {
  const coneectme({
    Key? key,
    required this.text,
    this.onPressed,
    this.styel,
  }) : super(key: key);
  final String text;
  final bool? styel;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 6,
            backgroundColor: Colors.black.withOpacity(0.8),
          ),
          SizedBox(
            width: 15,
          ),
          TextButton(
            onPressed: styel == true ? onPressed : null,
            child: Text(
              text,
              style: styel == true
                  ? TextStyle(color: Colors.teal)
                  : TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Project Type",
                hintText: "Select Project Type",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Project Budget",
                hintText: "Select Project Budget",
              ),
            ),
          ),
          SizedBox(
            // height: 300,
            // TextField by default cover the height, i tryed to fix this problem but i cant
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Description",
                hintText: "Write some description",
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "images/contact_icon.png",
                text: "Contact Me!",
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SocalCard extends StatefulWidget {
  const SocalCard({
    required this.iconSrc,
    required this.name,
    required this.color,
    required this.press,
  });

  final String iconSrc, name;
  final Color color;
  final void Function()? press;

  @override
  _SocalCardState createState() => _SocalCardState();
}

class _SocalCardState extends State<SocalCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding * 1.5,
          ),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Row(
            children: [
              Image.asset(
                widget.iconSrc,
                height: 80,
                width: 80,
              ),
              SizedBox(width: kDefaultPadding),
              Text(widget.name),
            ],
          ),
        ),
      ),
    );
  }
}
