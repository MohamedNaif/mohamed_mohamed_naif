import 'package:flutter/material.dart';
import 'package:flutter_app/Global/global_style.dart';
import 'package:flutter_app/screens/score_screen.dart';
import 'package:flutter_app/screens/start_quiz.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Global/global_data.dart';
import '../shared/CategoryButton.dart';
import 'q-screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 18, 43, 101),
              Color.fromARGB(255, 30, 71, 117),
              Color.fromARGB(255, 68, 98, 138),
              Color(0xFF398AE5),
            ],
            stops: [0.1, 0.4, 0.7, 0.9],
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              categorybtn(
                testname: 'Sport Test',
                onTab_func: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => questionscreen(
                                testName: 'Sport Test',
                                // themColor: gradientColor1,
                                questionsList: sportTest,
                              )));
                },
              ),
              categorybtn(
                testname: 'General Test',
                onTab_func: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => questionscreen(
                                testName: 'General Test',
                                // themColor: gradientColor2,
                                questionsList: generalTest,
                              )));
                },
              ),
              categorybtn(
                testname: 'History Test',
                onTab_func: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => questionscreen(
                                testName: 'History Test',
                                // themColor: gradientColor3,
                                questionsList: historyTest,
                              )));
                },
              ),
              categorybtn(
                testname: 'Science Test',
                onTab_func: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => questionscreen(
                        testName: 'Science Test',
                        // themColor: gradientColor4,
                        questionsList: scienceTest,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
