// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_task/pages/body/homepage.dart';

import 'signup_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isChecked = true;
  bool isPassActive1 = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Center(
              child: Text(
                "Welcome Back",
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Center(
              child: Text(
                "Please sign in to continue OnTask",
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      final validator = Validator(
                        validators: [EmailValidator(), RequiredValidator()],
                      );
                      return validator.validate(
                        context: context,
                        label: 'Email',
                        value: value,
                      );
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: GoogleFonts.montserrat(
                      // color: Colors.blueGrey,
                      letterSpacing: 1,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      labelStyle: GoogleFonts.montserrat(
                        // color: Colors.blueGrey,
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      floatingLabelStyle: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      hintStyle: GoogleFonts.montserrat(
                        // color: Colors.blueGrey,
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      errorStyle: GoogleFonts.montserrat(
                        color: CupertinoColors.systemRed,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.email_rounded,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  TextFormField(
                    obscureText: isPassActive1,
                    validator: (value) {
                      final validator = Validator(
                        validators: [
                          RequiredValidator(),
                          MinLengthValidator(length: 6),
                        ],
                      );
                      return validator.validate(
                        context: context,
                        label: 'Password',
                        value: value,
                      );
                    },
                    keyboardType: TextInputType.none,
                    style: GoogleFonts.montserrat(
                      // color: Colors.blueGrey,
                      letterSpacing: 1,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      labelStyle: GoogleFonts.montserrat(
                        // color: Colors.blueGrey,
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      floatingLabelStyle: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      hintStyle: GoogleFonts.montserrat(
                        // color: Colors.blueGrey,
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      errorStyle: GoogleFonts.montserrat(
                        color: CupertinoColors.systemRed,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () => setState(() {
                          isPassActive1 = !isPassActive1;
                        }),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Icon(
                            isPassActive1
                                ? CupertinoIcons.eye_slash_fill
                                : CupertinoIcons.eye_fill,
                          ),
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;

                            debugPrint("-------------------");
                          });
                        },
                      ),
                      Text(
                        "Remember me",
                        style: GoogleFonts.montserrat(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      // backgroundColor: black,
                      content: Text(
                        "Success Login",
                        style: GoogleFonts.montserrat(
                          // color: white,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ));
                    await Future.delayed(const Duration(milliseconds: 100), () {
                      setState(() {});
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.montserrat(
                    letterSpacing: 1,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // backgroundColor: CupertinoColors.activeBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Text(
                  "Sign in With Google Account",
                  style: GoogleFonts.montserrat(
                    letterSpacing: 1,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have any account? ",
                  style: GoogleFonts.montserrat(
                    // color: black,
                    letterSpacing: 1,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    ),
                    child: Text(
                      "SignUp",
                      style: GoogleFonts.montserrat(
                        color: Colors.blue,
                        letterSpacing: 1,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
