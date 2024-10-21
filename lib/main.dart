import 'package:flutter/material.dart';

//asset imports - lesser code plz
import 'package:aladwani_portfolio/pages/home_views/h_mobile.dart';
import 'package:aladwani_portfolio/pages/home_views/h_web.dart';
import 'package:aladwani_portfolio/assets/pages/s_appbar.dart';

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

//Bespoke Subtext: A Multi-faceted developer with specific focus on bridging the gap between viral marketing and programmers
// To do: 
// Fix padding on appbar, add button functionalities
// Burger menu leads to an app bar for the other pages