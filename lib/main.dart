import 'package:firstportfolio/const/height_width.dart';
import 'package:firstportfolio/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        initMediaQuery(context);
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'My portfolio',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color.fromARGB(255, 255, 255, 255)),
              useMaterial3: true,
            ),
            home: const Home());
      },
    );
  }
}
