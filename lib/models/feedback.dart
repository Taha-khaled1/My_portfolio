import 'package:flutter/material.dart';

class Feedback {
  final String? name, review, userPic;
  final int? id;
  final Color? color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Ronald Thompson",
    review: review,
    userPic: "images/people.png",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Ronald Thompson",
    review: review,
    userPic: "images/people.png",
    color: Color(0xFFD9FFFC),
  ),
  Feedback(
    id: 3,
    name: "Ronald Thompson",
    review: review,
    userPic: "images/people.png",
    color: Color(0xFFFFE0E0),
  ),
];

String review =
    'Companies in different fields, especially marketing and sales companies, know the importance of having an employee who possesses the skill of effectively negotiating. Negotiation is important not only for sales, but in almost all roles such as customer services,';
