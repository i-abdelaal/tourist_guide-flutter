import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String title;
  final String body;
  static const double _hzPad = 16.0;
  TextSection({@required this.title, @required this.body});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(_hzPad, 32.0, _hzPad, 4.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(_hzPad, 10.0, _hzPad, _hzPad),
          child: Text(
            body,
            style: Theme.of(context).textTheme.bodyText1,
        ),
        ),
      ],
    );
  }
}
