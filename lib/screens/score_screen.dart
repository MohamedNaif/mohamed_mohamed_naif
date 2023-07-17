import 'package:flutter/material.dart';
import 'package:flutter_app/Global/global_style.dart';
import 'package:flutter_app/screens/LoginScreen.dart';
import 'package:flutter_app/screens/start_screen.dart';

class ScoreScreen extends StatelessWidget {
  final int index;
  final int score;
  final String degree ; 
  const ScoreScreen({Key? key, required this.index, required this.score , required this.degree})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: gradientColor1 ,
        ),
        // margin: const EdgeInsets.all(30),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(degree ,
                style: const  TextStyle(fontSize: 34 , fontWeight: FontWeight.bold ,
                color: Colors.black ),),
                Text(
                  userNameTextEditingControllrt.text,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Your Score is',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '$score / ${index + 1}',
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    // Clear the username data
                    userNameTextEditingControllrt.clear();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StartScreen(),
                      ),
                    );
                  },
                  
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Play Again',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color : Colors.black 
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
