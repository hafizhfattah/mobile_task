import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeOnhold extends StatelessWidget {
  const HomeOnhold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.yellow,
        title: Text(
          "On Hold",
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
