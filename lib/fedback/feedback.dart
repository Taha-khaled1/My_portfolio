import 'package:flutter/material.dart';
import '../models/feedback.dart';
import '../widget/sectiontile.dart';
import 'widget/FeedbackCard.dart';

class fedback extends StatelessWidget {
  const fedback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      constraints: BoxConstraints(maxWidth: 1200),
      child: Column(
        children: [
          SectionTitle(
            title: "Feedback",
            subTitle: "Client’s testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          Container(
            alignment: Alignment.topCenter,
            height: 500,
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: feedbacks.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FeedbackCard(
                    index: index,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
