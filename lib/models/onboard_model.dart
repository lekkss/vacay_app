import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './onboard_item.dart';

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
