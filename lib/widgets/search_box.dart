import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pragyan/config/palette.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              cursorColor: ColorConstants.scaffoldBackgroundColor,
              cursorHeight: 20,
              textAlign: TextAlign.center,
              decoration: InputDecoration.collapsed(
                  hintText: 'Enter the subject name to search',
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
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
