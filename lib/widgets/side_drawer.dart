import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pragyan/config/palette.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 32,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Pragnya",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 26,
              ),
            ),
            accountEmail: Text(
              "Previous Year Question Papers",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            decoration: BoxDecoration(
              color: ColorConstants.scaffoldBackgroundColor,
              image: const DecorationImage(
                opacity: 0.4,
                image: NetworkImage(
                  "https://i.ytimg.com/vi/SySMHtzrHfk/maxresdefault.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.event,
              color: ColorConstants.scaffoldBackgroundColor,
            ),
            title: Text(
              "Events",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: ColorConstants.scaffoldBackgroundColor,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.download,
              color: ColorConstants.scaffoldBackgroundColor,
            ),
            title: Text(
              "Downloads",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: ColorConstants.scaffoldBackgroundColor,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.error,
              color: ColorConstants.scaffoldBackgroundColor,
            ),
            title: Text(
              "Report Error",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: ColorConstants.scaffoldBackgroundColor,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.contact_support,
              color: ColorConstants.scaffoldBackgroundColor,
            ),
            title: Text(
              "Contact Info",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: ColorConstants.scaffoldBackgroundColor,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "App version : 0.0.1",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: ColorConstants.scaffoldBackgroundColor,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
