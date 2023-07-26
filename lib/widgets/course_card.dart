import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import 'course_components.dart';

class CourseCard extends StatefulWidget {

 final CourseComponents? componentsOfCourse;

  const CourseCard({super.key, this.componentsOfCourse});

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {


  @override
  Widget build(BuildContext context) {



    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(

      child: SizedBox(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: courseCardList.length,

          itemBuilder: (BuildContext context, int index) {
          return Align(
            alignment: AlignmentDirectional.centerStart,
            child: Stack(
              children: [
                Container(
                  width: size.width - 45,
                  height: 90,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3D396C),
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Transform.translate(
                    offset: const Offset(20, -45),
                    child: Image.asset(
                      courseCardList[index].courseThumbnail!,
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(size.width - 77, 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/icons/play.svg',
                      width: 55,
                      height: 55,
                    ),
                  ),
                ),
                Positioned(
                  left: 155,
                  top: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        courseCardList[index].titleOfCourse!,
                        style: defaultStyle.copyWith(fontSize: 13),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        courseCardList[index].courseHours!,
                        style: defaultStyle.copyWith(
                          fontSize: 10,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          ...generateStars(),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },

        ),
      ),
    );
  }
}

