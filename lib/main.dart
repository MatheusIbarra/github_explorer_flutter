import 'package:flutter/material.dart';
import 'package:github_explorer/src/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomePage(),
    const HomePage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github Explorer',
      home: Scaffold(
        appBar: null,
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          backgroundColor: const Color.fromARGB(255, 225, 225, 225),
          selectedFontSize: 0.0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search,
                  color: Color.fromARGB(255, 143, 143, 143), size: 24.0),
              activeIcon: Icon(Icons.search, color: Colors.black, size: 24.0),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite,
                  color: Color.fromARGB(255, 143, 143, 143), size: 24.0),
              activeIcon: Icon(Icons.favorite, color: Colors.black, size: 24.0),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
