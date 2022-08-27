import 'package:done/main.dart';
import 'package:flutter/material.dart';
import 'package:done/constants.dart';
import 'package:done/pages/first_page.dart';
import 'package:done/pages/second_page.dart';
import 'package:done/pages/third_page.dart';
import 'package:done/pages/fourth_page.dart';
// import 'package:done/navigation_bar.dart';

void main() => runApp(MyApp());

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'DONE',
            style: TextStyle(
              fontFamily: 'BebasNeue',
              fontSize: 40,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.green[900],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    //
                    child: Image.asset(
                      'images/klaus2-modified.png',
                      width: 100.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white),
                    ),
                    // color: Colors.green[200],
                    height: 100,
                    width: 250,
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text('Name: Niklaus Mikealson'),
                            Text('Age: 1447'),
                            Text('Physique: 100🔥'),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
