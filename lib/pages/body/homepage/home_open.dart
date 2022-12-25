import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeOpen extends StatelessWidget {
  const HomeOpen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.red,
        title: Text(
          "Open",
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
