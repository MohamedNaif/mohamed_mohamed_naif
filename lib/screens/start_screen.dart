import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'LoginScreen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        SystemNavigator.pop() ;
        return true ;
      },
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: const Color(0xffb388eb),
            body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              decoration: const  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'lib/images/pngtree-modern-double-color-futuristic-neon-background-image_351866.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 103,
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage(
                            'lib/images/istockphoto-1290210769-612x612.jpg'),
                      ),
                    ),
                    const SizedBox(
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
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const  LoginScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 88, 66, 187),
                        minimumSize: const Size(60, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      // color: Colors.white,
                      child: const  Text(
                        'Get Started',
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
          )),
    );
  }
}
