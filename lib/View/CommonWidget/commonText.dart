import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysite/Uitility/ColorUtility.dart';

commonText(
    {required String text,
    double size = 14,
    FontWeight fontWeight = FontWeight.normal,
    Color color = whiteCOlor}) {
  return Text(
    text,
    style: TextStyle(fontSize: size, fontWeight: fontWeight, color: color),
  );
}
