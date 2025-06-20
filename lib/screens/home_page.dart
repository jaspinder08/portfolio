import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/largeScreen/desktop_layout_screen.dart';
import 'package:portfolio_website/screens/mobileScreen/mobile_layout_screen.dart';
import 'package:portfolio_website/screens/tabletScreen/tablet_layout_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 950) {
          return DesktopLayout();
        } else if (constraints.maxWidth > 600) {
          return TabletLayout();
        } else {
          return MobileLayoutScreen();
        }
      },
    );
  }
}
