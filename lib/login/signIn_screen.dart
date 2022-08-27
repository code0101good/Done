import 'package:done/navigation_bar.dart';
import 'package:done/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:done/screens/profile.dart';
import 'package:done/constants.dart';

const kGoogle = 'www.gmail.com';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

// Widget buttons() {
//   return
// }

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: MyAppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 300,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  cursorColor: Colors.white,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: 'Enter email here',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 10,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  cursorColor: Colors.white,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: '********',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[900],
                    minimumSize: Size(200, 40),
                    elevation: 10,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BotNavigation();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              // Text(
              //   'Already there $kGoogle',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
