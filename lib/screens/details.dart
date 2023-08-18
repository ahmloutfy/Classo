import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import '../widgets/course_components.dart';
import '../widgets/star_rating.dart';
import '../widgets/user_profiles.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  int selectedContainerIndex = -1; // Initially, no container is selected

  void changeColor(int index) {
    setState(() {
      if (selectedContainerIndex == index) {
        selectedContainerIndex =
        -1; // Reset color if the same container is tapped
      } else {
        selectedContainerIndex = index; // Set selected container index
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: const Color(0xFF29274F),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: isPortrait ? size.height / 2.8 : size.height / 1.8,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFE4965F),
                              Color(0xFFD4665A),
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          'assets/images/img_saly36.png',
                          fit: BoxFit.fill,
                          height: size
                              .height, // Set the height to match the screen height
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        StarRating(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      ' Graphic Design Master for Everyone',
                      overflow: TextOverflow.ellipsis,
                      style: defaultStyle.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 100,
                          child: Stack(children: [
                            UsersProfiles(
                              userImage: 'assets/images/users/img_user1.png',
                            ),
                            UsersProfiles(
                              leftAlignment: 20,
                              userImage: 'assets/images/users/img_user2.png',
                            ),
                            UsersProfiles(
                              leftAlignment: 40,
                              userImage: 'assets/images/users/img_user3.png',
                            ),
                            UsersProfiles(
                              leftAlignment: 60,
                              userImage: 'assets/images/users/img_user4.png',
                            ),
                          ]),
                        ),
                        const Text(
                          '+28K Members',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff353567),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon:
                            SvgPicture.asset('assets/icons/icon_like.svg'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      child: SizedBox(
                        height: size.height / 1.8,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: courseCardList.length,
                          itemBuilder: (context, index) => Column(
                            children: [
                              InkWell(
                                onTap: () => changeColor(index),
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: selectedContainerIndex == index
                                        ? const Color(0xff3E3A6D)
                                        : const Color(0xff29274F),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: courseCardList[index]
                                              .courseBackgroundColor,
                                          borderRadius:
                                          BorderRadius.circular(12),
                                        ),
                                        child: Transform.translate(
                                          offset: courseCardList[index]
                                              .thumbnailPosition,
                                          child: Image.asset(
                                            courseCardList[index]
                                                .courseThumbnail!,
                                            width: 50,
                                            height: 50,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Text(
                                              courseCardList[index]
                                                  .titleOfCourse!,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                courseCardList[index]
                                                    .courseHours!,
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              courseCardList[index].isFree
                                                  ? Container(
                                                height: 22,
                                                width: 35,
                                                decoration: BoxDecoration(
                                                  color: const Color(
                                                      0xffDB61A1),
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(10),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    'Free',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              )
                                                  : Container(),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}