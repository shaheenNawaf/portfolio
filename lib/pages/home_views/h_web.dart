import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

//For the card and data -- localstorage lang sa
import 'package:aladwani_portfolio/assets/pages/cards.dart';
import 'package:aladwani_portfolio/models/projects.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          "Hello! I'm Shaheen.",
          textAlign: TextAlign.left,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        RichText(
          text: TextSpan(
            text: "Crafting engaging digital\nexperiences with emphasis on\n",
            style: GoogleFonts.poppins(
              fontSize: 135,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              height: 1.15,
              letterSpacing: 0.5,
            ),
            children: <TextSpan>[
              TextSpan(
                text: "\tfunneling, conversion\nand virality",
                style: GoogleFonts.poppins(
                  fontSize: 135,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromARGB(255, 174, 178, 186),
                  height: 1.15,
                ),
              )
            ],
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 10),
        Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    // Wrap the buttons in a Flexible widget
    Flexible(
      child: Row(
        mainAxisSize: MainAxisSize.min, // Prevent buttons from stretching
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/contact');
            }, 
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
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
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ), 
                ),
                const SizedBox(width: 10),
                const FaIcon(
                  FontAwesomeIcons.arrowRight,
                  size: 17,
                  color: Colors.white,
                )
              ],
            ) 
          ),
          const SizedBox(width: 10), // Spacing between buttons
          TextButton(
            onPressed: () {}, 
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 8, 113, 193),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              )
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(
                  FontAwesomeIcons.linkedin,
                  size: 17,
                  color: Colors.white,
                )
              ],
            ) 
          ),
          const SizedBox(width: 10), // Spacing between buttons
          TextButton(
            onPressed: () {}, 
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 41, 98, 255),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              )
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(
                  FontAwesomeIcons.facebookMessenger,
                  size: 17,
                  color: Colors.white,
                )
              ],
            ) 
          ),
          const SizedBox(width: 10), // Spacing between buttons
          TextButton(
            onPressed: () {}, 
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 54, 54, 54),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              )
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(
                  FontAwesomeIcons.github,
                  size: 17,
                  color: Colors.white,
                )
              ],
            ) 
          ),
        ],
      ),
    ),
    // Keep the RichText in its own Flexible widget
    Flexible(
      child: RichText(
        text: TextSpan(
          text: "A multi-faceted person with specific focus\n",
          style: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
              text: "on bridging the gap between marketers and programmers",
              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              )
            )
          ]
        )
      ),
    ),
  ],
),
        const SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              FontAwesomeIcons.thumbtack,
              size: 25,
              color: Colors.black,
            ),
            const SizedBox(width: 15),
            Text(
              "Tech Stack & Skills",
              style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
            onPressed: () {}, 
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 54, 54, 54),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              )
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "C#",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  )
                ),
                const SizedBox(width: 10),
                const FaIcon(
                  FontAwesomeIcons.code,
                  size: 17,
                  color: Colors.white,
                )
              ],
            ) 
          ),
          const SizedBox(width: 10),
          TextButton(
            onPressed: () {}, 
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 0, 67, 212),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              )
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Dart",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  )
                ),
                const SizedBox(width: 10),
                const FaIcon(
                  FontAwesomeIcons.code,
                  size: 17,
                  color: Colors.white,
                )
              ],
            ) 
          ),
          const SizedBox(width: 10),
          TextButton(
            onPressed: () {}, 
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 152, 0, 212),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              )
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Digital Marketing",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  )
                ),
                const SizedBox(width: 10),
                const FaIcon(
                  FontAwesomeIcons.peopleGroup,
                  size: 17,
                  color: Colors.white,
                )
              ],
            ) 
          ),
          const SizedBox(width: 10),
          TextButton(
            onPressed: () {}, 
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 1, 185, 47),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              )
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Affiliate and Influencer Management",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  )
                ),
                const SizedBox(width: 10),
                const FaIcon(
                  FontAwesomeIcons.lightbulb,
                  size: 17,
                  color: Colors.white,
                )
              ],
            ) 
          )
        ],
      ),
        const SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              FontAwesomeIcons.solidStar,
              size: 25,
              color: Colors.black,
            ),
            const SizedBox(width: 15),
            Text(
              "Featured works",
              style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )
            )
          ],
        ),
        SizedBox(
          height: 600,
          child: ListView.builder(
            itemCount: projects.length,
            itemBuilder: (context, index) {
              final project = projects[index];
              return ProjectCard(
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