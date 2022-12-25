import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeInReview extends StatelessWidget {
  const HomeInReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.indigo,
        title: Text(
          "In Review",
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
