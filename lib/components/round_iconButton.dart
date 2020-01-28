import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class RoundButton extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;
  RoundButton({@required this.iconData, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: roundbuttonColor,
      child: Icon(iconData),
    );
  }
}
