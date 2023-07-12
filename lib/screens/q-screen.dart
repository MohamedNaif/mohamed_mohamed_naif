import 'package:flutter/material.dart';
import 'package:flutter_app/screens/start_screen.dart';
import '../shared/CategoryButton.dart';

import 'package:google_fonts/google_fonts.dart';

import '../shared/questionsbtn.dart';
import 'LoginScreen.dart';
import 'score_screen.dart';

class questionscreen extends StatefulWidget {
  const questionscreen({super.key});

  @override
  State<questionscreen> createState() => _questionscreenState();
}

class _questionscreenState extends State<questionscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Categories Name')),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StartScreen()),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(
                  'lib/images/istockphoto-1290210769-612x612.jpg'), // Replace with your image asset path
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF4286f4),
              Color(0xFF373B44),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    'Which country won the 2022 FIFA World Cup?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              questionsbtn(
                testname: 'Argentina',
                onTab_func: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => score_screen()));
                },
              ),
              questionsbtn(
                testname: 'Spain',
                onTab_func: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => score_screen()));
                },
              ),
              questionsbtn(
                testname: 'Brazil',
                onTab_func: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => score_screen()));
                },
              ),
              questionsbtn(
                testname: 'France',
                onTab_func: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => score_screen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
