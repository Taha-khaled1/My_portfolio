import 'package:flutter/material.dart';
import 'package:protfolietaha/constant.dart';
import 'package:protfolietaha/models/servic.dart';

import '../recentworks/recentmyWork.dart';
import '../widget/sectiontile.dart';
import 'widget/servicecard.dart';

class service extends StatelessWidget {
  const service({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme styel = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      constraints: BoxConstraints(
        maxWidth: 1200,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            constraints: BoxConstraints(
              maxWidth: 1200,
            ),
            height: 200,
            child: SectionTitle(
              title: "Service Offerings",
              subTitle: "Service Offerings",
              color: Color(0xFF00B1FF),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: services.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ServiceCard(
                      index: index,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
