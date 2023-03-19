import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'home_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modern Navigation Bar',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            tabs: [
              GButton(
                  icon: Icons.home,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (contex) => HomeMain()));
                  },
                  text: 'Home'),
              GButton(icon: Icons.search, text: 'Search'),
              GButton(icon: Icons.report, text: 'Reports'),
              GButton(icon: Icons.settings, text: 'Setting')
            ],
          ),
        ),
      ),
    );
  }
}
