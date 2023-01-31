import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTimeline extends StatelessWidget {
  const HomeTimeline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        // backgroundColor: Colors.black,
        title: Text(
          "Timeline",
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
