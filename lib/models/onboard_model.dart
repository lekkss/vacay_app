import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class OnboardItems {
  final String headings;
  final String title;
  final String description;
  final String imgUrl;

  OnboardItems({
    required this.headings,
    required this.title,
    required this.description,
    required this.imgUrl,
  });
}

class OnboardItemsModel with ChangeNotifier {
  final List<OnboardItems> _items = [
    OnboardItems(
      headings: "Trips",
      title: "Mountains",
      description:
          "Mountain hikes give you an incredible sense of freedom along with endurance tests.",
      imgUrl: "img/welcome-one.png",
    ),
    OnboardItems(
      headings: "Trips",
      title: "Mountains",
      description:
          "Mountain hikes give you an incredible sense of freedom along with endurance tests.",
      imgUrl: "img/welcome-two.png",
    ),
    OnboardItems(
      headings: "Trips",
      title: "Mountains",
      description:
          "Mountain hikes give you an incredible sense of freedom along with endurance tests.",
      imgUrl: "img/welcome-three.png",
    ),
  ];

  List<OnboardItems> get items => _items;
}
