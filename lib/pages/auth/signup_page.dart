import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, use_build_context_synchronously

import 'package:form_validation/form_validation.dart';
import 'package:mobile_task/pages/auth/signin_page.dart';
import 'package:mobile_task/pages/body/homepage.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPassActive1 = true;
  bool isPassActive2 = true;

  final TextEditingController _confirmPass = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: Text(
              "Register Account",
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
              "Please signup to continue to OnTask",
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
                      validators: [
                        RequiredValidator(),
                      ],
                    );
                    return validator.validate(
                      context: context,
                      label: 'Name',
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
                        Icons.person,
                      ),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
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
                  validator: (value) {
                    final validator = Validator(
                      validators: [PhoneNumberValidator(), RequiredValidator()],
                    );
                    return validator.validate(
                      context: context,
                      label: 'Phone',
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
                        Icons.call_rounded,
                      ),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    labelText: 'Phone',
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  obscureText: isPassActive1,
                  controller: _pass,
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
                  height: 16.0,
                ),
                TextFormField(
                  controller: _confirmPass,
                  obscureText: isPassActive2,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Empty';
                    }
                    if (val != _pass.text) {
                      return 'Password Not Match';
                    }
                    return null;
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
                        isPassActive2 = !isPassActive2;
                      }),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Icon(
                          isPassActive2
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
                    labelText: 'Confirm Password',
                  ),
                ),
                Row(),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
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
                  showDialog<void>(
                    context: context,
                    barrierDismissible: true,
                    useSafeArea: true,
                    builder: (BuildContext context) {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    },
                  );
                  await Future.delayed(const Duration(seconds: 1), () {
                    setState(() {});
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                  await Future.delayed(const Duration(milliseconds: 600), () {
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
                  });
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
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have any account? ",
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
                    MaterialPageRoute(builder: (context) => const SignIn()),
                  ),
                  child: Text(
                    "SignIn",
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
    );
  }
}
