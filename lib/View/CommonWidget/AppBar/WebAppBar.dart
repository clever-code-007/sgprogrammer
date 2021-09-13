import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysite/Uitility/SizeUtility.dart';

import '../commonText.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(context) * 0.09,
      child: Row(
        children: [
          Spacer(),
          commonText(text: "Home", fontWeight: FontWeight.w800, size: 22),
          commonWidthSpace(width: 72),
          commonText(text: "About", fontWeight: FontWeight.w800, size: 22),
          commonWidthSpace(width: 72),
          commonText(text: "Services", fontWeight: FontWeight.w800, size: 22),
          commonWidthSpace(width: 72),
          commonText(text: "Contact", fontWeight: FontWeight.w800, size: 22),
          Spacer(),
        ],
      ),
    );
  }
}
