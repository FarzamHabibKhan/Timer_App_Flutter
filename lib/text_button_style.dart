import 'package:flutter/material.dart';
import 'contants.dart';

class TextButtonStyle extends StatelessWidget {
  TextButtonStyle({required this.onPressed, required this.label});

  final String label;
  final Function()? onPressed;
  late final textLabelStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kShadowStyle(BoxShape.rectangle),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 20,
            color: label == 'Start' ? Colors.green : Colors.redAccent,
          ),
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          backgroundColor: kBgColor,
          elevation: 10,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: kButtonBorderRadius,
          ),
        ),
      ),
    );
  }
}
