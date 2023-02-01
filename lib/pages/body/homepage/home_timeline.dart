import 'package:fluid_dialog/fluid_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTimeline extends StatelessWidget {
  const HomeTimeline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () async {
            showDialog(
              context: context,
              builder: (context) => FluidDialog(
                rootPage: FluidDialogPage(
                  alignment: Alignment.center,
                  builder: (context) => const InputDialogPageTimeline(),
                ),
              ),
            );
          },
        ),
        appBar: AppBar(
          centerTitle: false,
          // backgroundColor: Colors.black,
          title: Text(
            "Timeline",
            style: GoogleFonts.montserrat(
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Wrap(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Empty",
                                    style: GoogleFonts.montserrat(
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Back",
                                      style: GoogleFonts.montserrat(
                                        letterSpacing: 1,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Card(
                  child: ListTile(
                    trailing: const Icon(
                      Icons.edit,
                    ),
                    title: Text(
                      "1. Create Video",
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      "12/05/22",
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        color: Colors.indigo,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

class ConfimationDialogTimeline extends StatelessWidget {
  const ConfimationDialogTimeline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: FittedBox(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "Are you sure you want to continue?",
                  style: GoogleFonts.montserrat(
                    letterSpacing: 1,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => DialogNavigator.of(context).pop(),
                    child: Text(
                      "No, Back Please",
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    onPressed: () async {
                      DialogNavigator.of(context).close();

                      //SnackBar
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        duration: const Duration(seconds: 2),
                        // backgroundColor: black,
                        content: Text(
                          "Project Added",
                          style: GoogleFonts.montserrat(
                            // color: white,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ));
                    },
                    child: Text(
                      "Yes, Continue pls",
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputDialogPageTimeline extends StatefulWidget {
  const InputDialogPageTimeline({Key? key}) : super(key: key);

  @override
  State<InputDialogPageTimeline> createState() =>
      _InputDialogPageTimelineState();
}

class _InputDialogPageTimelineState extends State<InputDialogPageTimeline> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  "Add new project",
                  style: GoogleFonts.montserrat(
                    letterSpacing: 1,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => DialogNavigator.of(context).close(),
                  child: const Icon(
                    Icons.close_rounded,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18.0,
            ),
            TextFormField(
              validator: (value) {
                final validator = Validator(
                  validators: [RequiredValidator()],
                );
                return validator.validate(
                  context: context,
                  label: 'Project Name',
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
                  child: Icon(Icons.library_books_rounded),
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                labelText: 'Project Name',
              ),
            ),
            const SizedBox(
              height: 20.0,
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
                    DialogNavigator.of(context).push(
                      FluidDialogPage(
                        alignment: Alignment.center,
                        builder: (context) => const ConfimationDialogTimeline(),
                      ),
                    );
                  }
                },
                child: Text(
                  "Submit",
                  style: GoogleFonts.montserrat(
                    letterSpacing: 1,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
