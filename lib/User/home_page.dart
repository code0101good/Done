import 'package:done/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('DONE'),
          centerTitle: true,
          backgroundColor: Colors.green[900],
        ),
        body: CircleAvatar(
          backgroundImage: AssetImage(
            'images/klaus2-modified.png',
          ),
        ),
      ),
    );
  }
}
