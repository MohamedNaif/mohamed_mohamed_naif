import 'package:flutter/material.dart';
import 'package:flutter_app/screens/category_screen.dart';

import 'package:flutter_app/screens/start_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'traning/filterbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}
