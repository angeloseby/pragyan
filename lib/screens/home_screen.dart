import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pragyan/config/palette.dart';
import 'package:pragyan/widgets/circle_stack.dart';
import 'package:pragyan/config/courses.dart';
import 'package:pragyan/widgets/course_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = TextEditingController();
  List<List<String>> allCourses = Courses.courseList;
  List<List<String>> courses = Courses.courseList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstants.scaffoldBackgroundColor,
      body: Stack(
        children: [
          //Circle stack of background
          const Positioned(
            top: -20,
            left: -250,
            child: CircleStack(),
          ),
          // White Scaffold Card
          SafeArea(
            child: Stack(
              children: [
                Column(
                  children: [
                    //Top Navigation Bar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Menu Bar
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu_rounded,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        //App Title
                        Text(
                          "Pragnya",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 26,
                          ),
                        ),
                        //Info Button
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.info_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    //Search box
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Search Text Area
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: TextField(
                                controller: controller,
                                onChanged: searchCourse,
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                                cursorColor:
                                    ColorConstants.scaffoldBackgroundColor,
                                cursorHeight: 20,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration.collapsed(
                                    hintText:
                                        'Enter the subject name to search',
                                    hintStyle: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey,
                                      fontStyle: FontStyle.italic,
                                    )),
                              ),
                            ),
                          ),
                          // Search Button Area
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {
                                resetSearchBar();
                              },
                              icon: controller.text == ''
                                  ? const Icon(Icons.search)
                                  : const Icon(Icons.close),
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                //Scaffold Card White
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.65,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: courses.isNotEmpty
                          ? ListView.builder(
                              itemCount: courses.length,
                              itemBuilder: ((BuildContext context, index) {
                                return CourseTile(
                                  courseName: courses[index][0],
                                  logoPath: courses[index][1],
                                );
                              }),
                            )
                          : Text(
                              "Course Not Found",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void searchCourse(String query) {
    courses = allCourses;
    final suggestions = courses.where((course) {
      final courseName = course[0].toLowerCase();
      final input = query.toLowerCase();

      return courseName.contains(input);
    }).toList();

    setState(() {
      courses = suggestions;
    });
  }

  void resetSearchBar() {
    setState(() {
      controller.clear();
      courses = allCourses;
    });
  }
}
