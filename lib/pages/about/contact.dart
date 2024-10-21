// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Import Reusable AppBar
import 'package:aladwani_portfolio/assets/pages/s_appbar.dart'; 

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const S_AppBar(), // Use your reusable AppBar
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 50, 10),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 670) {
                return _buildWebLayout();
              } else {
                return _buildMobileLayout();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildWebLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Image.network(
              'https://i.imgur.com/DQczwOu.png',
              height: 200,
        ),
        const SizedBox(height: 20),
        Text(
          "Hey, let's do this!",
          style: GoogleFonts.poppins(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Contact details on the left
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                _buildContactInfo(
                  "Email", 
                  "shaheenaladwani@gmail.com", 
                  FontAwesomeIcons.envelope),
                const SizedBox(height: 20),
                _buildContactInfo(
                  "Phone", 
                  "+639 1778 6315", 
                  FontAwesomeIcons.phone),
                const SizedBox(height: 20),
                _buildContactInfo(
                  "LinkedIn",
                  "/in/aladwani/",
                  FontAwesomeIcons.linkedin),
              ],
            ),
            // Social media links on the right
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSocialLink(FontAwesomeIcons.facebook, "https://www.facebook.com/Z4YEDval"),
                const SizedBox(height: 20),
                _buildSocialLink(FontAwesomeIcons.twitter, "https://www.facebook.com/Z4YEDval"),
                const SizedBox(height: 20),
                _buildSocialLink(FontAwesomeIcons.instagram, "https://www.facebook.com/Z4YEDval"),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
              'https://i.imgur.com/DQczwOu.png',
              height: 200,
        ),
        const SizedBox(height: 35),
        Text(
          "Hey, let's do this!",
          style: GoogleFonts.poppins(
            fontSize: 30, // Slightly smaller font size for mobile
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
         _buildContactInfo(
           "Email", 
           "\nshaheenaladwani@gmail.com", 
           FontAwesomeIcons.envelope),
         const SizedBox(height: 20),
         _buildContactInfo(
           "Phone", 
           "+63917786315", 
           FontAwesomeIcons.phone),
         const SizedBox(height: 20),
         _buildContactInfo(
           "LinkedIn",
           "/in/aladwani/",
           FontAwesomeIcons.linkedin),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Social media links
        _buildSocialLink(FontAwesomeIcons.facebook, "https://www.facebook.com/Z4YEDval"),
        const SizedBox(width: 20),
        _buildSocialLink(FontAwesomeIcons.twitter, "https://www.facebook.com/Z4YEDval"),
        const SizedBox(width: 20),
        _buildSocialLink(FontAwesomeIcons.instagram, "https://www.facebook.com/Z4YEDval"),
          ],
        ),
      ],
    );
  }

  Widget _buildContactInfo(String label, String value, IconData icon) {
    return Row(
      children: [
        FaIcon(icon, size: 18, color: Colors.black),
        const SizedBox(width: 10),
        Text(
          "$label: $value",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildSocialLink(IconData icon, String url) {
    return InkWell(
      onTap: () {
        
      },
      child: FaIcon(
        icon, 
        size: 24, 
        color: Colors.black
        ),
    );
  }
}