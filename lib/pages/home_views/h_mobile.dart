import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

//For the card and data -- localstorage lang sa
import 'package:aladwani_portfolio/assets/pages/cards_mobile.dart';
import 'package:aladwani_portfolio/models/projects.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          "Hello! I'm Shaheen.",
          textAlign: TextAlign.left,
          style: GoogleFonts.poppins(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 20),
        RichText(
          text: TextSpan(
            text: "Crafting engaging digital\nexperiences with emphasis\non",
            style: GoogleFonts.poppins(
              fontSize: 55,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              height: 1.15,
            ),
            children: <TextSpan>[
              TextSpan(
                text: "\tfunneling, conversion\n& virality",
                style: GoogleFonts.poppins(
                  fontSize: 55,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromARGB(255, 150, 150, 150),
                  height: 1.15,
                ),
              )
            ],
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(onPressed: () {}, 
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 21),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23),
                )
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Contact me!",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ), 
                  ),
                  const SizedBox(width: 6),
                  const FaIcon(
                    FontAwesomeIcons.arrowRight,
                    size: 14,
                    color: Colors.white,
                  )
                ],
              ) )
          ],
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
             FontAwesomeIcons.solidStar,
             size: 15,
             color: Colors.black,
            ),
            const SizedBox(width: 5),
            Text(
              "Featured works",
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 800,
          child: ListView.builder(
            itemCount: projects.length,
            itemBuilder: (context, index) {
              final project = projects[index];
              return ProjectCard_Mobile(
                imageUrl: project["imageUrl"]!, 
                title: project["title"]!, 
                description: project["description"]!
              );
            },
          ),
        ),
      ],
    );
  }
}