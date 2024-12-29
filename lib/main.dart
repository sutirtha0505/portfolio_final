import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/mainpage.dart';
import 'package:portfolio_app/pages/about_page.dart';
import 'package:portfolio_app/pages/home_page.dart';
import 'package:portfolio_app/pages/projects_page.dart';
import 'package:portfolio_app/pages/skills_page.dart';

void main() {
  runApp(const MyApp(
    title: 'Portfolio App',
  ));
}

class MyApp extends StatelessWidget {
  final String title;

  const MyApp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black26,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontFamily: 'MyFont',
          ),
        ),
      ),
      home: const MainPage(),
      routes: {
        '/homePage': (context) => const HomePage(),
        '/skillsPage': (context) => const SkillsPage(),
        '/projectsPage': (context) => const ProjectsPage(),
        '/aboutPage': (context) => const AboutMePage(),
      },
    );
  }
}
