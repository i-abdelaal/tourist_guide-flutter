import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String imgSrc;
  ImageBanner({@required this.imgSrc});
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.0,
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Image.asset(
        imgSrc,
        fit: BoxFit.cover,
        ),
    );
  }
}
