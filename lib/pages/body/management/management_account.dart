import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils.dart';

class ManagementAccount extends StatelessWidget {
  const ManagementAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        title: Text(
          "Management Account",
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
      ),
    );
  }
}
