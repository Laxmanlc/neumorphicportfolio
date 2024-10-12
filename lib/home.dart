import 'package:firstportfolio/Screen/desktop.dart';
import 'package:firstportfolio/Screen/mobile.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return const MobilePage();
      } else {
        return const DesktopHomePage();
      }
    });
  }
}
