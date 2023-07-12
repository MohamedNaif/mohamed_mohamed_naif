import 'package:flutter/material.dart';
import 'package:flutter_app/screens/start_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LoginScreen.dart';

class score_screen extends StatefulWidget {
  const score_screen({super.key});

  @override
  State<score_screen> createState() => _score_screenState();
}

class _score_screenState extends State<score_screen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  // late String _username;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //  late String _username;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('score_screen')),
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
          child: Column(children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Hello Mohamed your score is 10/10',
                  style: GoogleFonts.pacifico(
                    color: Colors.black,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StartScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 88, 66, 187),
                minimumSize: Size(60, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              // color: Colors.white,
              child: Text(
                'Play Again',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
