import 'package:flutter/material.dart';

class CourseComponents {
  final String? titleOfCourse;
  final String? courseHours;
  final String? courseThumbnail;
  final Color? courseBackgroundColor;
  final bool isFree;
  final Offset thumbnailPosition;

  CourseComponents({required this.thumbnailPosition, this.courseBackgroundColor,
      this.isFree = false,
        this.titleOfCourse,
        this.courseHours,
        this.courseThumbnail});
}

List<CourseComponents> courseCardList = [
  CourseComponents(
    thumbnailPosition: const Offset(0, -15),
    courseBackgroundColor: const Color(0xffDB61A1),
    courseHours: '8 Hours',
    courseThumbnail: 'assets/images/planet.png',
    titleOfCourse: 'Flutter Developer',
    isFree: false,
  ),
  CourseComponents(
    thumbnailPosition: const Offset(-15, 0),
    courseBackgroundColor: const Color(0xffF4C465),
    courseHours: '6 Hours',
    courseThumbnail: 'assets/images/img_saly20.png',
    titleOfCourse: 'Full Stack Javascript',
    isFree: true,
  ),
  CourseComponents(
    thumbnailPosition: const Offset(0, 0),
    courseBackgroundColor: const Color(0xff326AA5),
    courseHours: '4 Hours',
    courseThumbnail: 'assets/images/img_saly25.png',
    titleOfCourse: 'Kotlin Course',
    isFree: true,
  ),
  CourseComponents(
    thumbnailPosition: const Offset(0, 0),
    courseBackgroundColor: const Color(0xff326AA5),
    courseHours: '4 Hours',
    courseThumbnail: 'assets/images/img_saly25.png',
    titleOfCourse: 'Kotlin Course',
    isFree: true,
  ),
  CourseComponents(
    thumbnailPosition: const Offset(0, 0),
    courseBackgroundColor: const Color(0xff326AA5),
    courseHours: '4 Hours',
    courseThumbnail: 'assets/images/img_saly25.png',
    titleOfCourse: 'Kotlin Course',
    isFree: true,
  ),
  CourseComponents(
    thumbnailPosition: const Offset(0, 0),
    courseBackgroundColor: const Color(0xff326AA5),
    courseHours: '4 Hours',
    courseThumbnail: 'assets/images/img_saly25.png',
    titleOfCourse: 'Kotlin Course',
    isFree: true,
  ),
  CourseComponents(
    thumbnailPosition: const Offset(0, 0),
    courseBackgroundColor: const Color(0xff326AA5),
    courseHours: '4 Hours',
    courseThumbnail: 'assets/images/img_saly25.png',
    titleOfCourse: 'Kotlin Course',
    isFree: true,
  ),  CourseComponents(
    thumbnailPosition: const Offset(0, 0),
    courseBackgroundColor: const Color(0xff326AA5),
    courseHours: '4 Hours',
    courseThumbnail: 'assets/images/img_saly25.png',
    titleOfCourse: 'Kotlin Course',
    isFree: true,
  ),  CourseComponents(
    thumbnailPosition: const Offset(0, 0),
    courseBackgroundColor: const Color(0xff326AA5),
    courseHours: '4 Hours',
    courseThumbnail: 'assets/images/img_saly25.png',
    titleOfCourse: 'Kotlin Course',
    isFree: true,
  ),  CourseComponents(
    thumbnailPosition: const Offset(0, 0),
    courseBackgroundColor: const Color(0xff326AA5),
    courseHours: '4 Hours',
    courseThumbnail: 'assets/images/img_saly25.png',
    titleOfCourse: 'Kotlin Course',
    isFree: true,
  ),




];