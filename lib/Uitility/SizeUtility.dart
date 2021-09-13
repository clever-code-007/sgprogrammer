import 'package:flutter/material.dart';

getHeight(context) => MediaQuery.of(context).size.height;

getWidth(context) => MediaQuery.of(context).size.width;

commonHeighSpace({double height = 8}) => SizedBox(height: height);
commonWidthSpace({double width = 8}) => SizedBox(width: width);
