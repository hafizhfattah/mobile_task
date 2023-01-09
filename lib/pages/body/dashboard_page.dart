import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils.dart';

class Dashboardpage extends StatelessWidget {
  const Dashboardpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: black,
          centerTitle: false,
          title: Text(
            "Dashboard",
            style: GoogleFonts.montserrat(
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Center(
          child: Text(
            "Empty",
            style: GoogleFonts.montserrat(
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
            ),
          ),
        ));
  }
}
