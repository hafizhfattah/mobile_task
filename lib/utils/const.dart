// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

//GetxController
class MyController extends GetxController {
  //Declaration
  var count = 0.obs;

  var isActive = true.obs;

  //Function
  void changeTheme() => isActive.value = !isActive.value;

  void increment() => count.value += 1;

  void decrement() {
    if (count < 1) {
      return;
    }
    count.value--;
  }
}

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
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
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
              // boxShadow: [
              //   BoxShadow(
              //     color: Color(0x19000000),
              //     blurRadius: 24,
              //     offset: Offset(0, 11),
              //   ),
              // ],
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
      ),
    );
  }
}
