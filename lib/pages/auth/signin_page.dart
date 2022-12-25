import 'package:flutter/material.dart';
import 'package:form_floating_action_button/form_floating_action_button.dart';
import 'package:form_validation/form_validation.dart';

class SignIn extends StatefulWidget {
  const SignIn({
    Key? key,
  }) : super(key: key);
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _loading = false;

  void _onSubmit() async {
    setState(() => _loading = true);
    await Future.delayed(const Duration(seconds: 3));
    _loading = false;
    if (mounted == true) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Builder(
        builder: (BuildContext context) => Scaffold(
          body: ListView(
            padding: const EdgeInsets.all(12),
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Required',
                ),
                validator: (value) {
                  final validator = Validator(
                    validators: [RequiredValidator()],
                  );

                  return validator.validate(
                    context: context,
                    label: 'Required',
                    value: value,
                  );
                },
              ),
              const SizedBox(
                height: 16.0,
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
                  labelText: 'Min 3 / Max 5 Length',
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
            ],
          ),
          floatingActionButton: FormFloatingActionButton(
            loading: _loading,
            onSubmit: _onSubmit,
            onValidate: () async {
              var error = false;

              try {
                final form = Form.of(context);

                if (form != null) {
                  error = form.validate();
                }
              } catch (e) {
                // no-op
              }
              return error;
            },
          ),
        ),
      ),
    );
  }
}


// class SignIn extends StatelessWidget {
//   const SignIn({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//           scrollDirection: Axis.vertical,
//           padding: const EdgeInsets.all(12),
//           children: [
//             TextFormField(
//               obscureText: false,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Email',
//               ),
//             ),
//             const SizedBox(
//               height: 10.0,
//             ),
//             const TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Password',
//               ),
//             ),
//             const SizedBox(
//               height: 10.0,
//             ),
//             const ButtonCustom(
//               route: SignIn(),
//               bottomleft: 0,
//               topright: 16,
//               bottomright: 0,
//               topleft: 16,
//               warna: CupertinoColors.activeBlue,
//               label: "Sign in With Google",
//               tinggi: 50,
//             ),
//             const SizedBox(
//               height: 10.0,
//             ),
//             const ButtonCustom(
//               route: SignIn(),
//               bottomleft: 16,
//               topright: 0,
//               bottomright: 16,
//               topleft: 0,
//               warna: black,
//               label: "Sign in",
//               tinggi: 50,
//             ),
//             const SizedBox(
//               height: 10.0,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Don't have any account? ",
//                   style: GoogleFonts.montserrat(
//                     color: black,
//                     letterSpacing: 1,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () => Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const SignUp()),
//                   ),
//                   child: Text(
//                     "SignUp",
//                     style: GoogleFonts.montserrat(
//                       color: Colors.blue,
//                       letterSpacing: 1,
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ]),
//     );
//   }
// }


// class SignIn extends StatefulWidget {
//   const SignIn({super.key});

//   @override
//   State<SignIn> createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   //Declaration
//   bool isPassActive1 = true;
//   bool isPassActive2 = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: black,

//       //Appbar
//       appBar: AppBar(
//         toolbarHeight: 160,
//         title: Container(
//           height: 100.0,
//           width: 100,
//           padding: const EdgeInsets.all(12),
//           decoration: const BoxDecoration(
//             color: white,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(
//                 16.0,
//               ),
//               bottomLeft: Radius.circular(
//                 16.0,
//               ),
//               bottomRight: Radius.circular(
//                 16.0,
//               ),
//             ),
//           ),
//           child: const FlutterLogo(),
//         ),
//         backgroundColor: Colors.transparent,
//         shadowColor: Colors.transparent,
//       ),

//       //Body
//       body: SafeArea(
//         bottom: false,
//         child: Padding(
//           padding: const EdgeInsets.only(top: 20),
//           child: Container(
//             padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
//             height: double.infinity,
//             decoration: const BoxDecoration(
//               color: white,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(84.0),
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(12),
//               child: ListView(
//                 children: [
//                   const SizedBox(
//                     height: 20.0,
//                   ),

//                   Text(
//                     "Login",
//                     style: GoogleFonts.montserrat(
//                       color: black,
//                       letterSpacing: 1,
//                       fontSize: 30,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),

//                   const SizedBox(
//                     height: 20.0,
//                   ),

//                   //Email Section
//                   Container(
//                     height: 120,
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 18, horizontal: 16),
//                     decoration: const BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Color(0x19000000),
//                           blurRadius: 6,
//                           offset: Offset(0, 6),
//                         ),
//                       ],
//                       color: white,
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(
//                           16.0,
//                         ),
//                       ),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Email",
//                           style: GoogleFonts.montserrat(
//                             color: black,
//                             letterSpacing: 1,
//                             fontSize: 20,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 10.0,
//                         ),
//                         TextFormField(
//                           style: GoogleFonts.montserrat(
//                             color: Colors.blueGrey,
//                             letterSpacing: 1,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           decoration: InputDecoration.collapsed(
//                               hintStyle: GoogleFonts.montserrat(
//                                 color: Colors.blueGrey,
//                                 letterSpacing: 1,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                               border: InputBorder.none,
//                               hintText: "jayjoekarta99@gmail.com"),
//                           onChanged: (value) {},
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20.0,
//                   ),

//                   //Password Section
//                   Container(
//                     height: 120,
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 18, horizontal: 16),
//                     decoration: const BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Color(0x19000000),
//                           blurRadius: 6,
//                           offset: Offset(0, 6),
//                         ),
//                       ],
//                       color: white,
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(
//                           16.0,
//                         ),
//                       ),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Password",
//                           style: GoogleFonts.montserrat(
//                             color: black,
//                             letterSpacing: 1,
//                             fontSize: 20,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 10.0,
//                         ),
//                         TextFormField(
//                           obscureText: isPassActive1,
//                           style: GoogleFonts.montserrat(
//                             color: Colors.blueGrey,
//                             letterSpacing: 1,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           decoration: InputDecoration(
//                               suffixIcon: GestureDetector(
//                                 onTap: () => setState(() {
//                                   isPassActive1 = !isPassActive1;
//                                 }),
//                                 child: Icon(
//                                   isPassActive1
//                                       ? CupertinoIcons.eye_slash_fill
//                                       : CupertinoIcons.eye_fill,
//                                 ),
//                               ),
//                               hintStyle: GoogleFonts.montserrat(
//                                 color: Colors.blueGrey,
//                                 letterSpacing: 1,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                               border: InputBorder.none,
//                               hintText: "Joekarta"),
//                           onChanged: (value) {},
//                         ),
//                       ],
//                     ),
//                   ),

//                   const SizedBox(
//                     height: 20.0,
//                   ),

//                   //Button Section
//                   ClipRRect(
//                     borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(
//                         16.0,
//                       ),
//                       bottomLeft: Radius.circular(
//                         16.0,
//                       ),
//                       bottomRight: Radius.circular(
//                         16.0,
//                       ),
//                     ),
//                     child: Material(
//                       color: black,
//                       child: InkWell(
//                         splashColor: Colors.grey,
//                         onTap: () => Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const HomePage()),
//                         ),
//                         child: Container(
//                           alignment: Alignment.center,
//                           height: 70.0,
//                           decoration: const BoxDecoration(
//                             color: Colors.transparent,
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(
//                                 16.0,
//                               ),
//                               bottomLeft: Radius.circular(
//                                 16.0,
//                               ),
//                               bottomRight: Radius.circular(
//                                 16.0,
//                               ),
//                             ),
//                           ),
//                           child: Text(
//                             "Login",
//                             style: GoogleFonts.montserrat(
//                               color: white,
//                               letterSpacing: 1,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 15.0,
//                   ),
//                   //Button Google Section
//                   ClipRRect(
//                     borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(
//                         16.0,
//                       ),
//                       bottomLeft: Radius.circular(
//                         16.0,
//                       ),
//                       bottomRight: Radius.circular(
//                         16.0,
//                       ),
//                     ),
//                     child: Material(
//                       color: CupertinoColors.activeBlue,
//                       child: InkWell(
//                         splashColor: Colors.grey,
//                         onTap: () {},
//                         child: Container(
//                           alignment: Alignment.center,
//                           height: 70.0,
//                           decoration: const BoxDecoration(
//                             color: Colors.transparent,
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(
//                                 16.0,
//                               ),
//                               bottomLeft: Radius.circular(
//                                 16.0,
//                               ),
//                               bottomRight: Radius.circular(
//                                 16.0,
//                               ),
//                             ),
//                           ),
//                           child: Text(
//                             "Sign In with Google",
//                             style: GoogleFonts.montserrat(
//                               color: white,
//                               letterSpacing: 1,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(
//                     height: 15.0,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Don't have any account? ",
//                         style: GoogleFonts.montserrat(
//                           color: black,
//                           letterSpacing: 1,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: () => Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const SignUp()),
//                         ),
//                         child: Text(
//                           "SignUp",
//                           style: GoogleFonts.montserrat(
//                             color: Colors.blue,
//                             letterSpacing: 1,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       )
//                     ],
//                   ),

//                   const SizedBox(
//                     height: 30.0,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
