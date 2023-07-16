import 'package:flutter/material.dart';
import 'package:flutter_app/screens/q-screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'LoginScreen.dart';

class start_quiz extends StatelessWidget {
  const start_quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xffb388eb),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'lib/images/7585.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  // CircleAvatar(
                  //   backgroundColor: Colors.white,
                  //   radius: 103,
                  //   child: CircleAvatar(
                  //     radius: 100,
                  //     backgroundImage: AssetImage(
                  //         'lib/images/istockphoto-1290210769-612x612.jpg'),
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'ITI Quizz App',
                    style: GoogleFonts.pacifico(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    'We Are Creative, enjoy our App',
                    style: GoogleFonts.pacifico(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => questionscreen(
                                  questionsList: [],
                                )),
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
                      'Start Quiz ',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
