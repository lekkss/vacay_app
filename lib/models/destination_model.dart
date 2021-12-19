import 'package:flutter/material.dart';

class DestinationItem {
  final String id;
  final String image;
  final String name;
  final int amount;
  final String location;

  DestinationItem({
    required this.image,
    required this.id,
    required this.name,
    required this.amount,
    required this.location,
  });
}

class DestinationModal with ChangeNotifier {
  final List<DestinationItem> _items = [
    DestinationItem(
      image: "img/mountain.jpeg",
      id: "01",
      name: "Yosemite",
      amount: 250,
      location: "USA, Califonia",
    ),
    DestinationItem(
      image: "img/mountain.jpeg",
      id: "02",
      name: "Yosemite",
      amount: 300,
      location: "USA, Califonia",
    ),
    DestinationItem(
      image: "img/mountain.jpeg",
      id: "03",
      name: "Yosemite",
      amount: 400,
      location: "USA, Califonia",
    ),
  ];

  List<DestinationItem> get items => _items;

  DestinationItem findbyId(String id) {
    return _items.firstWhere((destination) => destination.id == id);
  }
}
