import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/score_screen.dart';

class questionsbtn extends StatelessWidget {
  final String testname;
  final Function()? onTab_func;

  const questionsbtn({super.key, required this.testname, this.onTab_func});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab_func,
      child: Container(
        height: 100,
        width: 400,
        child: Center(
          child: Text(
            testname,
            style: GoogleFonts.pacifico(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.05),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],

          //
        ),
      ),
    );
  }
}
