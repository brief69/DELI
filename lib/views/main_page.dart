import 'package:flutter/material.dart';
import 'send_page.dart';
import 'rece_page.dart';
import 'prof_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const SendPage(),
    RecePage(),
    const ProfPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.send), label: 'SEND'),
          BottomNavigationBarItem(icon: Icon(Icons.call_received), label: 'RECE'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'PROF'),
        ],
      ),
    );
  }
}
