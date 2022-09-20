import 'package:flutter/material.dart';

class Service {
  final int? id;
  final String? title, image;
  final Color? color;

  Service({this.id, this.title, this.image, this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: " UI / Ux ",
    image: "images/graphic.png",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Web developer",
    image: "images/desktop.png",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "Android & Ios developer",
    image: "images/ui.png",
    color: Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "Back end",
    image: "images/backend.png",
    color: Color(0xFFFFE0E0),
  ),
];
