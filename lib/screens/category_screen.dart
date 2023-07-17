import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/Global/global_style.dart';
import 'package:flutter_app/screens/score_screen.dart';

import 'package:google_fonts/google_fonts.dart';
import '../Global/global_data.dart';
import '../shared/CategoryButton.dart';
import 'q-screen.dart';

class CategoryScreen extends StatelessWidget {
   CategoryScreen({super.key});
  List < String > quizname = [ "Sport Test" , "General Test" , "History Test" , "Science Test" ] ;
  List < List > quizkind = [sportTest , generalTest , historyTest , scienceTest] ;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Intercept the back button press event
        SystemNavigator.pop(); // Exit the app
        return false; // Prevent default behavior of navigating back
      },
      child: Scaffold(
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
                for ( int i = 0 ; i < 4 ; i++)
                categorybtn(
                  testname: quizname[i],
                  onTab_func: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => questionscreen(
                                  testName: quizname[i],
                                  // themColor: gradientColor1,
                                  questionsList: quizkind[i],
                                  quizcolor: quizcolor[i],
                                ),)
                                
                                );
                  },
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
