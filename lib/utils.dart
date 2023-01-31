// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Colors
const white = CupertinoColors.white;
const black = CupertinoColors.black;

//Widget
class MenuTask extends StatelessWidget {
  const MenuTask({
    Key? key,
    required this.total,
    required this.judul,
    required this.warna,
    required this.route,
  }) : super(key: key);

  final String judul;
  final Widget route;
  final int total;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => route),
      ),
      child: Card(
        child: Container(
          height: 100.0,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            // color: white,
            boxShadow: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 24,
                offset: Offset(0, 11),
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(
                16.0,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    total.toString(),
                    style: GoogleFonts.montserrat(
                      // color: black,
                      fontSize: 15,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    judul,
                    style: GoogleFonts.montserrat(
                      // color: black,
                      fontSize: 15,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 20.0,
                decoration: BoxDecoration(
                  color: warna,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      99.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    Key? key,
    required this.judul,
    required this.icon,
    required this.route,
  }) : super(key: key);

  final Widget icon;
  final String judul;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        judul,
        style: GoogleFonts.montserrat(
          // color: black,
          letterSpacing: 1,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
    );
  }
}

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    Key? key,
    required this.label,
    this.tinggi,
    required this.warna,
    required this.onPressed,
    this.topleft,
    this.topright,
    this.bottomright,
    this.bottomleft,
  }) : super(key: key);

  final double? bottomleft;
  final double? bottomright;
  final String label;
  final Function() onPressed;
  final double? tinggi;
  final double? topleft;
  final double? topright;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topleft ?? 0),
        bottomLeft: Radius.circular(bottomleft ?? 0),
        bottomRight: Radius.circular(bottomright ?? 0),
        topRight: Radius.circular(topright ?? 0),
      ),
      child: Material(
        color: warna,
        child: InkWell(
          splashColor: Colors.grey,
          onTap: () {
            onPressed;
          },
          child: Container(
            alignment: Alignment.center,
            height: tinggi,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(topleft ?? 0),
                bottomLeft: Radius.circular(bottomleft ?? 0),
                bottomRight: Radius.circular(bottomright ?? 0),
                topRight: Radius.circular(topright ?? 0),
              ),
            ),
            child: Text(
              label,
              style: GoogleFonts.montserrat(
                color: white,
                letterSpacing: 1,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
