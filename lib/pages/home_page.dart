// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mentalhealthapp/util/emoticon_faces.dart';

var dateC = "";

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
      ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                // greetings row
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables

                children: [
                  //Hi Lakshit

                  // ignore: prefer_const_constructors
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Lakshit',
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('22 apr,23')
                    ],
                  ),

                  //notification
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[800],
                        borderRadius: BorderRadius.circular(12)),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(11.0),
                  )
                ],
              ),

              SizedBox(
                height: 20,
              ),
              // search bar row
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How Do You Feel ',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),

              SizedBox(
                height: 25,
              ),

              // 4 diffrent faces
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //bad
                  Column(
                    children: [
                      EmoticonFace(
                        emoticonFace: '😩',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Bad',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),

                  // fine
                  Column(
                    children: [
                      EmoticonFace(
                        emoticonFace: '🙂',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Fine',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),

                  // well
                  Column(
                    children: [
                      EmoticonFace(
                        emoticonFace: '😃',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Well',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),

                  //Excellent

                  Column(
                    children: [
                      EmoticonFace(
                        emoticonFace: '😊',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Excellent',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
