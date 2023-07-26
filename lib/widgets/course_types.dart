import 'package:flutter/material.dart';

class CourseTypes extends StatelessWidget {
  const CourseTypes({
    super.key,
    this.gradientColors,
    this.colorOfButton,
    this.textOfButton,
    this.courseTitle,
    this.courseImage,
    this.leftImagePosition,
    this.bottomImagePosition,
  });

  final List<Color>? gradientColors;
  final Color? colorOfButton;
  final String? textOfButton;
  final String? courseTitle;
  final String? courseImage;
  final double? leftImagePosition;
  final double? bottomImagePosition;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: gradientColors!),
            borderRadius: BorderRadius.circular(17),
          ),
          width: 200,
          height: 250,
        ),
        Positioned(
          left: 10,
          top: 10,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 20,
                  color: Colors.black.withOpacity(0.18),
                ),
              ],
              color: colorOfButton!,
              borderRadius: BorderRadius.circular(15),
            ),
            width: 110,
            height: 30,
            child: Center(
              child: Text(
                textOfButton!,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 10,
          top: 60,
          child: Text(
            courseTitle!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          left: leftImagePosition,
          bottom: bottomImagePosition,
          child: Image.asset(
            courseImage!,
            width: 250,
            height: 250,
          ),
        )
      ],
    );
  }
}