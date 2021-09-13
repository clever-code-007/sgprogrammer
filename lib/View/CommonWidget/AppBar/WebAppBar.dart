import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysite/Controller/HoverController.dart';
import 'package:mysite/Uitility/ColorUtility.dart';
import 'package:mysite/Uitility/SizeUtility.dart';

import '../commonText.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(context) * 0.09,
      width: getWidth(context),
      child: GetX(builder: (HoverController ctr) {
        return Row(
          children: [
            Spacer(),
            InkWell(
              onHover: (val) {
                ctr.home.value = val;
              },
              onTap: () {
                ctr.activeTab.value = 0;
              },
              child: commonText(
                  text: "Home",
                  fontWeight: FontWeight.w700,
                  size: 18,
                  color: ctr.activeTab.value == 0
                      ? orangeCOlor
                      : ctr.home.value
                          ? orangeCOlor
                          : whiteCOlor),
            ),
            commonWidthSpace(width: 72),
            InkWell(
              onHover: (val) {
                ctr.about.value = val;
              },
              onTap: () {
                ctr.activeTab.value = 1;
              },
              child: commonText(
                  text: "About",
                  fontWeight: FontWeight.w700,
                  size: 18,
                  color: ctr.activeTab.value == 1
                      ? orangeCOlor
                      : ctr.about.value
                          ? orangeCOlor
                          : whiteCOlor),
            ),
            commonWidthSpace(width: 72),
            InkWell(
              onHover: (val) {
                ctr.services.value = val;
              },
              onTap: () {
                ctr.activeTab.value = 2;
              },
              child: commonText(
                  text: "Services",
                  fontWeight: FontWeight.w700,
                  size: 18,
                  color: ctr.activeTab.value == 2
                      ? orangeCOlor
                      : ctr.services.value
                          ? orangeCOlor
                          : whiteCOlor),
            ),
            commonWidthSpace(width: 72),
            InkWell(
              onHover: (val) {
                ctr.contact.value = val;
              },
              onTap: () {
                ctr.activeTab.value = 3;
              },
              child: commonText(
                  text: "Contact",
                  fontWeight: FontWeight.w700,
                  size: 18,
                  color: ctr.activeTab.value == 3
                      ? orangeCOlor
                      : ctr.contact.value
                          ? orangeCOlor
                          : whiteCOlor),
            ),
            Spacer(),
          ],
        );
      }),
    );
  }
}
