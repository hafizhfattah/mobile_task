import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //Declaration
  bool isPassActive1 = true;
  bool isPassActive2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,

      //Appbar
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: GoogleFonts.montserrat(
            color: white,
            letterSpacing: 1,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            CupertinoIcons.back,
            color: white,
          ),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),

      //Body
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
            height: double.infinity,
            decoration: const BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(84.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),

                    //Name Section
                    Container(
                      height: 120,
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 6,
                            offset: Offset(0, 6),
                          ),
                        ],
                        color: white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "First Name",
                            style: GoogleFonts.montserrat(
                              color: black,
                              letterSpacing: 1,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            style: GoogleFonts.montserrat(
                              color: Colors.blueGrey,
                              letterSpacing: 1,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLength: 10,
                            decoration: InputDecoration.collapsed(
                                hintStyle: GoogleFonts.montserrat(
                                  color: Colors.blueGrey,
                                  letterSpacing: 1,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                border: InputBorder.none,
                                hintText: "Vjay Aljanam"),
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                    //Email Section
                    Container(
                      height: 120,
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 16),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 6,
                            offset: Offset(0, 6),
                          ),
                        ],
                        color: white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: GoogleFonts.montserrat(
                              color: black,
                              letterSpacing: 1,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            style: GoogleFonts.montserrat(
                              color: Colors.blueGrey,
                              letterSpacing: 1,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration.collapsed(
                                hintStyle: GoogleFonts.montserrat(
                                  color: Colors.blueGrey,
                                  letterSpacing: 1,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                border: InputBorder.none,
                                hintText: "jayjoekarta99@gmail.com"),
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                    //Password Section
                    Container(
                      height: 120,
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 16),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 6,
                            offset: Offset(0, 6),
                          ),
                        ],
                        color: white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Password",
                            style: GoogleFonts.montserrat(
                              color: black,
                              letterSpacing: 1,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            obscureText: isPassActive1,
                            style: GoogleFonts.montserrat(
                              color: Colors.blueGrey,
                              letterSpacing: 1,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: () => setState(() {
                                    isPassActive1 = !isPassActive1;
                                  }),
                                  child: Icon(
                                    isPassActive1
                                        ? CupertinoIcons.eye_slash_fill
                                        : CupertinoIcons.eye_fill,
                                  ),
                                ),
                                hintStyle: GoogleFonts.montserrat(
                                  color: Colors.blueGrey,
                                  letterSpacing: 1,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                border: InputBorder.none,
                                hintText: "Joekarta"),
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 20.0,
                    ),

                    // Confirm Password Section
                    Container(
                      height: 120,
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 16),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 6,
                            offset: Offset(0, 6),
                          ),
                        ],
                        color: white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Confirm Password",
                            style: GoogleFonts.montserrat(
                              color: black,
                              letterSpacing: 1,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            obscureText: isPassActive2,
                            style: GoogleFonts.montserrat(
                              color: Colors.blueGrey,
                              letterSpacing: 1,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: () => setState(() {
                                    isPassActive2 = !isPassActive2;
                                  }),
                                  child: Icon(
                                    isPassActive2
                                        ? CupertinoIcons.eye_slash_fill
                                        : CupertinoIcons.eye_fill,
                                  ),
                                ),
                                hintStyle: GoogleFonts.montserrat(
                                  color: Colors.blueGrey,
                                  letterSpacing: 1,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                border: InputBorder.none,
                                hintText: "Joekarta"),
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),

                    //Button Submit Section
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(
                          16.0,
                        ),
                        bottomLeft: Radius.circular(
                          16.0,
                        ),
                        bottomRight: Radius.circular(
                          16.0,
                        ),
                      ),
                      child: Material(
                        color: black,
                        child: InkWell(
                          splashColor: Colors.grey,
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 70.0,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  16.0,
                                ),
                                bottomLeft: Radius.circular(
                                  16.0,
                                ),
                                bottomRight: Radius.circular(
                                  16.0,
                                ),
                              ),
                            ),
                            child: Text(
                              "SignUp",
                              style: GoogleFonts.montserrat(
                                color: white,
                                letterSpacing: 1,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have any account? ",
                          style: GoogleFonts.montserrat(
                            color: black,
                            letterSpacing: 1,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Text(
                            "SignIn",
                            style: GoogleFonts.montserrat(
                              color: Colors.blue,
                              letterSpacing: 1,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
