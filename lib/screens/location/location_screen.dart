import 'package:flutter/material.dart';

import '../../models/location.dart';
import 'image_banner.dart';
import 'text_section.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    final location = locations.first;
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(
            imgSrc: location.imagePath,
          ),
        ]..addAll(textSections(location)),
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(title: fact.title, body: fact.text))
        .toList();
  }
}
