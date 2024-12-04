

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // Define the views for each tab
  final List<Widget> _pages = [
    const Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
  ];

  // When a bottom navigation item is tapped
  void _onItenTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Example'),
      ),
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(currentIndex: _currentIndex,
      onTap: _onItenTapped,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.search),
        label: 'Search',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person),
        label: 'Profile',
        ),
      ],
      ),
    );
  }
}
