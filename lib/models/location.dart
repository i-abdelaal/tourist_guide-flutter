import 'package:flutter/material.dart';

import 'location_fact.dart';

class Location {
  String name;
  String imagePath;
  final List<LocationFact> facts;
  Location(
      {@required this.name, @required this.imagePath, @required this.facts});

  static List<Location> fetchAll() {
    return [
      Location(
          name: 'Arashiyama Bamboo Grove',
          imagePath: 'assets/images/kiyomizu-dera.jpg',
          facts: [
            LocationFact(
                title: 'Summary',
                text:
                    'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
            LocationFact(
                title: 'How to Get There',
                text:
                    'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
          ]),
    ];
  }
}
