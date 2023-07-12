import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'q-screen.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Categories'),
      // ),
      body: Container(
        decoration: BoxDecoration(
          // image: DecorationImage(
          //     image: AssetImage(
          //         'lib/images/pngtree-quiz-clipart-design-png-image_6577600.png')),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCategoryButton(context, 'Sport Category '),
              _buildCategoryButton(context, 'General Category '),
              _buildCategoryButton(context, 'Science Category'),
              _buildCategoryButton(context, 'History Category'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryButton(BuildContext context, String categoryName) {
    return Container(
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(50),
        // ),
        height: MediaQuery.of(context).size.height * 0.25,
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        // margin: EdgeInsets.symmetric(vertical: 10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => questionscreen()),
            );
            // TODO: Implement action when category button is pressed
          },
          child: Text(
            categoryName,
            style: GoogleFonts.pacifico(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
        ));
  }
}
