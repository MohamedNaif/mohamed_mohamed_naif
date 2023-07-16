import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Global/global_style.dart';
import '../screens/score_screen.dart';

class categorybtn extends StatelessWidget {
  final String testname;
  final Function()? onTab_func;
  final Function()? themColor;

  const categorybtn(
      {super.key, required this.testname, this.onTab_func, this.themColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: onTab_func,
      child: Container(
        child: Center(
          child: Text(
            testname,
            style: GoogleFonts.pacifico(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        padding: EdgeInsets.all(16),
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
    ));
  }
}
