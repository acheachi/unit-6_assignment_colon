import 'package:unit6_assignment_colon/screens/about_me.dart';
import 'package:unit6_assignment_colon/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      // Create the routes here
      initialRoute: 'Home',
      routes: {
        'About': (BuildContext ctc) => const About_Me(),
        'Home': (BuildContext ctc) => const HomScreen(),
      }
    );
  }
}