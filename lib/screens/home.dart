import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/course_card.dart';
import '../widgets/course_types.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF29274F),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 40, 0, 10),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Online',
                    style: defaultStyle,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('Master Class', style: defaultStyle),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: size.width,
                    height: 270,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CourseTypes(
                          leftImagePosition: -13,
                          colorOfButton: Color(0xFFAEA7ED),
                          courseTitle: 'UI/UX DESIGNER \nBEGINNER',
                          gradientColors: [
                            Color(0xFF817AD4),
                            Color(0xFF625BB5),
                          ],
                          textOfButton: 'Recommended',
                          courseImage: 'assets/images/img_saly10.png',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CourseTypes(
                          bottomImagePosition: 10,
                          colorOfButton: Color(0xFFE59B60),
                          courseTitle: 'GRAPHICS \nMASTER',
                          gradientColors: [
                            Color(0xFFE4965F),
                            Color(0xFFD4665A),
                          ],
                          textOfButton: 'NEW CLASS',
                          courseImage: 'assets/images/img_saly36.png',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Free online class',
                          style: defaultStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text: '\nFrom over 80 Lectures',
                          style: defaultStyle.copyWith(
                            fontSize: 10,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),

              SizedBox(
                  height: size.height,
                  child: const CourseCard()),

            ],
          ),
        ),
      ),
    );
  }
}


