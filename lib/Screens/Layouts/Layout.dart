import 'package:anasabafone/components/consts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: primaryColor,
          color: primaryColor,
          letIndexChange: (index) => true,
          items: const <Widget>[
            Icon(
              IconlyBroken.home,
              size: 25,
              color: Colors.white,
            ),
            Icon(
              IconlyBroken.category,
              size: 25,
              color: Colors.white,
            ),
            Icon(
              IconlyBroken.calling,
              size: 25,
              color: Colors.white,
            ),
            Icon(
              IconlyBroken.location,
              size: 25,
              color: Colors.white,
            ),
            Icon(
              IconlyBroken.profile,
              size: 25,
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: bottomNavigatorScreen[currentIndex]);
  }
}
