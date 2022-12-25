import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeProgress extends StatelessWidget {
  const HomeProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.blue,
        title: Text(
          "Progress",
          style: GoogleFonts.montserrat(
            letterSpacing: 1,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
