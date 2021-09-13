import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mysite/Uitility/AssetsUtility.dart';
import 'package:mysite/Uitility/ColorUtility.dart';
import 'package:mysite/Uitility/SizeUtility.dart';
import 'package:mysite/View/CommonWidget/AppBar/WebAppBar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(builder: (context, size) {
          return Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: size.maxHeight,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: backgrountImage, fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
              if (size.maxWidth >= 768) WebAppBar()
            ],
          );
        }),
        bottomNavigationBar: getWidth(context) <= 767
            ? Container(
                decoration: BoxDecoration(
                  color: blackCOlor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Colors.black.withOpacity(.1),
                    )
                  ],
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8),
                    child: GNav(
                      color: blackCOlor,
                      activeColor: Colors.white,
                      rippleColor: Colors.grey[800]!,
                      hoverColor: Colors.grey[700]!,
                      gap: 8,
                      iconSize: 24,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      duration: Duration(milliseconds: 400),
                      tabBackgroundColor: Colors.grey[900]!,
                      tabs: [
                        GButton(
                          icon: Icons.home,
                          text: 'Home',
                          iconColor: whiteCOlor.withOpacity(0.5),
                        ),
                        GButton(
                          icon: Icons.room_service_outlined,
                          text: 'About',
                          iconColor: whiteCOlor.withOpacity(0.5),
                        ),
                        GButton(
                          icon: Icons.search,
                          text: 'Services',
                          iconColor: whiteCOlor.withOpacity(0.5),
                        ),
                        GButton(
                          icon: Icons.usb_rounded,
                          text: 'Contact',
                          iconColor: whiteCOlor.withOpacity(0.5),
                        ),
                      ],
                      selectedIndex: 0,
                      onTabChange: (index) {},
                    ),
                  ),
                ),
              )
            : null);
  }
}
