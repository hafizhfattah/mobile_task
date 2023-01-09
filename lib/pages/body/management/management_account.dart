import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_task/utils.dart';

class ManagementAccount extends StatelessWidget {
  const ManagementAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
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
