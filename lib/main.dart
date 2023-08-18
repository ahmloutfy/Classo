import 'dart:ui';
import 'package:classo/screens/details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const OnlineClass(),
  );
}

class OnlineClass extends StatelessWidget {
  const OnlineClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      debugShowCheckedModeBanner: false,
      home: const CourseDetails(),
    );
  }
}