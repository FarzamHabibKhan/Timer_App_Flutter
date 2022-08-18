import 'package:flutter/material.dart';

const kBoxShadow = [
  BoxShadow(
    blurRadius: 15,
    color: Color(0xff303030),
    offset: Offset(-2, -1),
  ),
  BoxShadow(
    blurRadius: 10,
    color: Colors.black,
    spreadRadius: 5,
    offset: Offset(8, 8),
  )
];
BoxDecoration kShadowStyle(BoxShape boxShape) {
  return BoxDecoration(
    color: kBgColor,
    shape: boxShape,
    boxShadow: kBoxShadow,
    borderRadius: boxShape == BoxShape.rectangle ? kButtonBorderRadius : null,
  );
}

const kProgressBarStrokeSize = 260.0;
const kBgColor = Color(0xff151515);
const kMaxTimer = 60;
BorderRadius kButtonBorderRadius = BorderRadius.circular(20);
