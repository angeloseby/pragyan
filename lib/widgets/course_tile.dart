import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pragyan/config/palette.dart';

class CourseTile extends StatelessWidget {
  final String courseName, logoPath;
  const CourseTile({
    super.key,
    required this.courseName,
    required this.logoPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(20),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorConstants.scaffoldBackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                courseName,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Image.asset('assets/course_logos/$logoPath')
        ],
      ),
    );
  }
}
