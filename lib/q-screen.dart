import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              MaterialPageRoute(builder: (context) => LoginScreen()),
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
              Text(
                'Which country won the 2022 FIFA World Cup?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              _buildCategoryButton(context, 'Argentina '),
              _buildCategoryButton(context, 'Spain'),
              _buildCategoryButton(context, 'Brazil'),
              _buildCategoryButton(context, 'France'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCategoryButton(BuildContext context, String choice) {
  return Container(
    height: 75,
    width: 600,
    padding: EdgeInsets.all(16.0),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => score_screen()));
      },
      child: Text(choice),
    ),
  );
}
