import 'package:flutter/material.dart';

import 'location_fact.dart';

class Location {
  int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;
  Location(
      {@required this.id,
      @required this.name,
      @required this.imagePath,
      @required this.facts});

  static List<Location> fetchAll() {
    return [
      Location(
          id: 1,
          name: 'Kiyomizu-dera',
          imagePath: 'assets/images/kio.jfif',
          facts: [
            LocationFact(
                title: 'Summary 1',
                text:
                    '1, While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
            LocationFact(
                title: '1, How to Get There',
                text:
                    '1, Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
          ]),
      Location(
          id: 2,
          name: 'Mount Fuji',
          imagePath: 'assets/images/fuji.jpg',
          facts: [
            LocationFact(
                title: 'Summary 2',
                text:
                    '2, While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
            LocationFact(
                title: '2, How to Get There',
                text:
                    '2, Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
          ]),
      Location(
          id: 3,
          name: 'Arashiyama Bamboo Grove',
          imagePath: 'assets/images/japaneseSpring.jfif',
          facts: [
            LocationFact(
                title: 'Summary 3',
                text:
                    '3, While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
            LocationFact(
                title: '3, How to Get There',
                text:
                    '3, Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
          ]),
    ];
  }

  static Location fetchByID({@required int locationID}) {
    List<Location> locations = fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
