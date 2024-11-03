import 'package:unit6_assignment_colon/components/tab_widget_1.dart';
import 'package:unit6_assignment_colon/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text("About Me"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepPurple,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.contacts, size: 24, color: Colors.white),
                text: "Contact",
              ),
              Tab(
                icon: Icon(Icons.pages, size: 24, color: Colors.white),
                text: "Page",
              ),
            ],
            labelColor: Colors.white,
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: TabWidget1()), 
            Center(child: TabWidget2()),
          ],
        ),
      ),
    );
  }
}