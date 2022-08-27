// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:done/constants.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[50],
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 20, 10),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage(
                        'images/klaus2.png',
                      ),
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ), // to add color for container add in box deco,
                      width: 200,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          child: Column(
                            children: [
                              Text(
                                'Name: Niklaus Mikealson ',
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Age: 1000+                          ',
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Phisyque: 100%                  ',
                              ),
                              SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 30, 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      width: 150,
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              'STATS',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 9),
                            Image(
                              image: NetworkImage(
                                  'https://imgs.search.brave.com/ScN-AqDrMe1Exso93Csusettiz1gGSO06a6Xb1PqaM0/rs:fit:788:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5C/TXNMUVh4SHdzMWZh/N2J6UjVSLUtBSGFF/ZCZwaWQ9QXBp'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 20, 0, 20),
                      child: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(40, 10, 20, 20),
                              child: Column(
                                children: [
                                  Text(
                                    'Percent',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: kContainerColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            width: 150,
                            height: 150,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      width: 350,
                      height: 130,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
