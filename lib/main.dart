import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  } 
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const S_AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 50, 10),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints){
              if (constraints.maxWidth > 670){
                return const HomeWeb();
              }else{
                return const HomeMobile();
              }
            }, 
          ),
        ),
      )
    );
  }
}

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
            text: "Designing digital\nproducts\nwith\nemphasis\non",
            style: GoogleFonts.poppins(
              fontSize: 80,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              height: 1,
            ),
            children: <TextSpan>[
              TextSpan(
                text: "\tvisual design and virality",
                style: GoogleFonts.poppins(
                  fontSize: 80,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromARGB(255, 150, 150, 150),
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
            RichText(
              text: TextSpan(
                text: "A multi-faceted person with specific focus\n",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "on briding the gap between marketers and programmers",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    )
                  )
                ]
              )
            )
          ],
        )
      ],
    );
  }
}

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
            text: "Designing digital\nproducts with emphasis\non",
            style: GoogleFonts.poppins(
              fontSize: 135,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              height: 1.1,
              letterSpacing: 0.5,
            ),
            children: <TextSpan>[
              TextSpan(
                text: "\tvisual design and virality",
                style: GoogleFonts.poppins(
                  fontSize: 135,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromARGB(255, 174, 178, 186),
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
            TextButton(
              onPressed: () {}, 
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                    width: 1,
                  )
                )
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Let's talk",
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
            RichText(
              text: TextSpan(
                text: "A multi-faceted person with specific focus\n",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "on briding the gap between marketers and programmers",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    )
                  )
                ]
              )
            ),
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
      ],
    );
  }
}

// ignore: camel_case_types
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
            onPressed: () {}, 
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
//Bespoke Subtext: A Multi-faceted developer with specific focus on bridging the gap between viral marketing and programmers
// To do: 
// Fix padding on appbar, add button functionalities
// Burger menu leads to an app bar for the other pages