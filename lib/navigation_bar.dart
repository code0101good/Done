import 'package:done/main.dart';
import 'package:done/pages/fourth_page.dart';
import 'package:done/pages/second_page.dart';
import 'package:done/pages/third_page.dart';
// import 'package:done/screens/bottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:done/pages/first_page.dart';

void main() => runApp(MyApp());

class BotNavigation extends StatefulWidget {
  const BotNavigation({Key? key}) : super(key: key);

  @override
  State<BotNavigation> createState() => _BotNavigationState();
}

class _BotNavigationState extends State<BotNavigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    FourthPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: KMainColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: KMainColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
            backgroundColor: KMainColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label: 'Activity',
            backgroundColor: KMainColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: KMainColor,
          ),
        ],
        currentIndex: _selectedIndex,
        // fixedColor: KMainColor,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
