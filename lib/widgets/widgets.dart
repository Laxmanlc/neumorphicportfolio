import 'package:firstportfolio/const/textstyle.dart';
import 'package:flutter/material.dart';

// first button widget
class NeumorphicButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String label;
  const NeumorphicButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  State<NeumorphicButton> createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          height: 50,
          width: 90,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: _isHovered
                ? const Color.fromARGB(255, 2, 255, 19)
                : const Color.fromARGB(255, 227, 229, 243),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 255, 255, 255),
                  offset: Offset(4, 4),
                  blurRadius: 15,
                  spreadRadius: 1),
              BoxShadow(
                  color: Color.fromARGB(255, 255, 255, 255),
                  offset: Offset(-4, -4),
                  blurRadius: 15,
                  spreadRadius: 1)
            ],
          ),
          child: Center(
            child: Text(
              widget.label,
              style: cairoTextstyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}

// Icon widgets
class NeumorphicImageButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String imagePath;
  const NeumorphicImageButton({
    super.key,
    required this.onPressed,
    required this.imagePath,
  });

  @override
  State<NeumorphicImageButton> createState() => _NeumorphicImageButtonState();
}

class _NeumorphicImageButtonState extends State<NeumorphicImageButton> {
  bool _onhover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _onhover = true;
        });
      },
      onExit: (_) {
        setState(() {
          _onhover = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          height: 40,
          width: 40,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: _onhover
                ? const Color.fromARGB(255, 2, 255, 19)
                : const Color.fromARGB(255, 227, 229, 243),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 255, 255, 255),
                  offset: Offset(4, 4),
                  blurRadius: 15,
                  spreadRadius: 1),
              BoxShadow(
                  color: Color.fromARGB(255, 255, 255, 255),
                  offset: Offset(-4, -4),
                  blurRadius: 15,
                  spreadRadius: 1)
            ],
          ),
          child: Center(
              child: Image.asset(
            widget.imagePath,
            fit: BoxFit.cover,
            width: 30,
            height: 30,
          )),
        ),
      ),
    );
  }
}

//NemorphicContainer for image
class NemorphicContainer extends StatelessWidget {
  final String imagePath;
  final double height1;
  final double height2;
  final double width1;
  final double width2;
  const NemorphicContainer(
      {super.key,
      required this.imagePath,
      required this.height1,
      required this.width1,
      required this.height2,
      required this.width2});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: width1,
          height: height1,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 227, 229, 243),
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(4, 4),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4, -4),
                  blurRadius: 15,
                  spreadRadius: 1,
                )
              ]),
        ),
        Container(
          color: Colors.transparent,
          width: width2,
          height: height2,
          child: Image.asset(
            imagePath,
            height: height2,
            width: width2,
          ),
        )
      ],
    );
  }
}
