import 'package:flutter/material.dart';

import 'image_banner.dart';
import 'text_section.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(imgSrc: 'assets/images/japaneseSpring.jfif',),
          TextSection(
            title:'title',
            body:'sdfasdfasdfalkjlakshiasdfia dsdf lkadf asldkjflakfasdfa' ,
          ),
          TextSection(
            title:'title', 
            body:'sdfasdfasdfalkjlakshiasdfia dsdf lkadf asldkjflakfasdfa' ,
          ),
          TextSection(
            title:'title', 
            body:'sdfasdfasdfalkjlakshiasdfia dsdf lkadf asldkjflakfasdfa' ,
          ),
        ],
      ),
    );
  }
}
