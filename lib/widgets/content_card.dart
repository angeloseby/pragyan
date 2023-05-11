import 'package:flutter/material.dart';
import 'package:pragyan/config/courses.dart';
import 'package:pragyan/widgets/course_tile.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: ListView.builder(
          itemCount: Courses.courseList.length,
          itemBuilder: ((BuildContext context, index) {
            return CourseTile(
              courseName: Courses.courseList[index][0],
              logoPath: Courses.courseList[index][1],
            );
          }),
        ),
      ),
    );
  }
}
