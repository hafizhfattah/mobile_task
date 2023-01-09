// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_task/pages/body/homepage.dart';

import '../../utils.dart';
import 'signup_page.dart';

class NewSignIn extends StatefulWidget {
  const NewSignIn({Key? key}) : super(key: key);

  @override
  State<NewSignIn> createState() => _NewSignInState();
}

class _NewSignInState extends State<NewSignIn> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: Text(
              "Welcome Back",
              style: GoogleFonts.poppins(
                decoration: isChecked
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                letterSpacing: 1,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Center(
            child: Text(
              "Please sign in to continue OnTask",
              style: GoogleFonts.poppins(
                decoration: isChecked
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                letterSpacing: 1,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
            validator: (value) {
              final validator = Validator(
                validators: [
                  RequiredValidator(),
                  EmailValidator(),
                ],
              );

              return validator.validate(
                context: context,
                label: 'Email',
                value: value,
              );
            },
          ),
          const SizedBox(
            height: 16.0,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
            validator: (value) {
              final validator = Validator(
                validators: [
                  MaxLengthValidator(length: 5),
                  MinLengthValidator(length: 3),
                ],
              );

              return validator.validate(
                context: context,
                label: 'Min 3 / Max 5 Length',
                value: value,
              );
            },
          ),
          const SizedBox(
            height: 25.0,
          ),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Text(
                "Remember me",
                style: GoogleFonts.poppins(
                  decoration: isChecked
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ButtonCustom(
              tinggi: 40,
              label: "Login",
              warna: Colors.indigo,
              onClick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              }),
          const SizedBox(
            height: 10.0,
          ),
          const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.ibb.co/PGv8ZzG/me.jpg",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have any account? ",
                style: GoogleFonts.montserrat(
                  color: black,
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                ),
                child: Text(
                  "SignUp",
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
    );
  }
}
