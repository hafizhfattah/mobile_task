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
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 10),
        itemCount: 10,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              hoverColor: Colors.grey[200],
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(
                  "https://picsum.photos/${index + 20}",
                ),
              ),
              title: Text(
                "Welcome ${index + 1}",
                style: GoogleFonts.montserrat(
                  color: black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                "Tugas ${index + 1}",
                style: GoogleFonts.montserrat(
                  color: black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
