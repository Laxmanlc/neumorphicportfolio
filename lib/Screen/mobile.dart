import 'package:firstportfolio/const/const_image.dart';
import 'package:firstportfolio/const/height_width.dart';
import 'package:firstportfolio/const/textstyle.dart';
import 'package:firstportfolio/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({super.key});

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 229, 243),
      body: LayoutBuilder(builder: (contect, constraints) {
        return Padding(
          padding: EdgeInsets.all(
            screenWidth * 0.008,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(screenWidth * 0.008),
                      child: CircleAvatar(
                        radius: screenHeight * 0.06,
                        backgroundColor:
                            const Color.fromARGB(255, 190, 190, 203),
                        backgroundImage:
                            const AssetImage("assets/profile1.png"),
                      ),
                    ),
                    Row(
                      children: [
                        NeumorphicButton(
                          label: "Home",
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        NeumorphicButton(
                          label: "About",
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        NeumorphicButton(
                          label: "Portfolio",
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        NeumorphicButton(
                          label: "Contact ",
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: screenWidth * 0.02,
                ),
                //change row into column of the body
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NemorphicContainer(
                      imagePath: p2,
                      width1: screenWidth * 0.7,
                      height1: screenHeight * 0.9,
                      width2: screenWidth * 0.75,
                      height2: screenHeight * 0.91,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome To My world",
                            style: cairoTextstyle(
                                color: Colors.black,
                                fontSize: screenWidth * 0.04),
                          ),
                          SizedBox(
                            height: screenWidth * 0.02,
                          ),
                          Row(
                            children: [
                              Text(
                                "Hi, I am",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenWidth * 0.08,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                " Nora Davis",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 3, 197, 16),
                                  fontSize: screenWidth * 0.08,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "A ",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 3, 197, 16),
                                  fontSize: screenWidth * 0.08,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                " Web Developer",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenWidth * 0.08,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenWidth * 0.02,
                          ),
                          Text(
                            "Developing websites for four years in a young,\n"
                            "rapid growing startsup taught me how to balance\n"
                            "business goals and engineering constraints as\n"
                            "I unrelentingly avocated for.",
                            style: cairoTextstyle(
                                color: Colors.black,
                                fontSize: screenWidth * 0.045),
                          ),
                          SizedBox(
                            height: screenWidth * 0.02,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Find Me",
                                    style: cairoTextstyle(
                                        color: Colors.black,
                                        fontSize: screenWidth * 0.045,
                                        fontweight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: screenWidth * 0.01,
                                  ),
                                  Row(
                                    children: [
                                      NeumorphicImageButton(
                                        onPressed: () {},
                                        imagePath: facebook,
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.01,
                                      ),
                                      NeumorphicImageButton(
                                        onPressed: () {},
                                        imagePath: insta,
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.01,
                                      ),
                                      NeumorphicImageButton(
                                        onPressed: () {},
                                        imagePath: twiter,
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.01,
                                      ),
                                      NeumorphicImageButton(
                                        onPressed: () {},
                                        imagePath: github,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                width: screenWidth * 0.05,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Skills",
                                    style: cairoTextstyle(
                                        color: Colors.black,
                                        fontSize: screenWidth * 0.045,
                                        fontweight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: screenWidth * 0.01,
                                  ),
                                  Row(
                                    children: [
                                      NeumorphicImageButton(
                                        onPressed: () {},
                                        imagePath: graphic,
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.01,
                                      ),
                                      NeumorphicImageButton(
                                        onPressed: () {},
                                        imagePath: webdevelop,
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.01,
                                      ),
                                      NeumorphicImageButton(
                                        onPressed: () {},
                                        imagePath: appdevelop,
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    // after the texts or the first expanded
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
