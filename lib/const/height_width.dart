import 'package:flutter/material.dart';

late double screenWidth;
late double screenHeight;
void initMediaQuery(BuildContext context) {
  screenWidth = MediaQuery.of(context).size.width;
  screenHeight = MediaQuery.of(context).size.height;
}
