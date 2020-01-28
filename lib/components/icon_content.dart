import 'package:flutter/material.dart';
import '../constants.dart';

class CardGenderContent extends StatelessWidget {
  final IconData cardIcon;
  final String text;

  CardGenderContent({this.cardIcon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 90.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: contentText,
        ),
      ],
    );
  }
}
