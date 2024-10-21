// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class S_AppBar extends StatelessWidget implements PreferredSizeWidget {
  const S_AppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        title:  Text(
          'shaheen.',
          style: GoogleFonts.poppins(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/contact');
            }, 
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1,
                )
              )
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children:[
                Text(
                  "Let's talk",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                const SizedBox(width: 10),
                const FaIcon(
                  FontAwesomeIcons.arrowRight,
                  size: 17,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1,
                )
              )
            ),
            icon: const FaIcon(
              FontAwesomeIcons.bars,
              size: 15,
              color: Colors.black,
              ),
          ),
          const SizedBox(width: 10),
        ],
      );
  }
}