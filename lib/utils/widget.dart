import 'package:fluid_dialog/fluid_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';
import 'package:google_fonts/google_fonts.dart';

//HomePage.dart
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

//homepage.dart
class ConfimationDialog extends StatelessWidget {
  const ConfimationDialog({Key? key}) : super(key: key);

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

                      Navigator.pop(context);

                      //SnackBar
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        duration: const Duration(seconds: 2),
                        // backgroundColor: black,
                        content: Text(
                          "Progress Saved",
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

//homepage.dart
class InputDialogPage extends StatefulWidget {
  const InputDialogPage({Key? key}) : super(key: key);

  @override
  State<InputDialogPage> createState() => _InputDialogPageState();
}

class _InputDialogPageState extends State<InputDialogPage> {
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
                  "Create new board",
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
              height: 15,
            ),
            TextFormField(
              validator: (value) {
                final validator = Validator(
                  validators: [RequiredValidator()],
                );
                return validator.validate(
                  context: context,
                  label: 'Description',
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
                    Icons.create_rounded,
                  ),
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                labelText: 'Description',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              validator: (value) {
                final validator = Validator(
                  validators: [RequiredValidator()],
                );
                return validator.validate(
                  context: context,
                  label: 'Assign a member',
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
                    Icons.create_rounded,
                  ),
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                labelText: 'Assign a member',
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
                        alignment: Alignment.topLeft,
                        builder: (context) => const ConfimationDialog(),
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

//homepage - Folder
class ConfimationDialogHome extends StatelessWidget {
  const ConfimationDialogHome({Key? key}) : super(key: key);

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

//homepage - Folder
class InputDialogPageHome extends StatefulWidget {
  const InputDialogPageHome({Key? key}) : super(key: key);

  @override
  State<InputDialogPageHome> createState() => _InputDialogPageHomeState();
}

class _InputDialogPageHomeState extends State<InputDialogPageHome> {
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
                        builder: (context) => const ConfimationDialogHome(),
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

//homepage - Folder
class InputDialogPageHomeChecklist extends StatefulWidget {
  const InputDialogPageHomeChecklist({Key? key}) : super(key: key);

  @override
  State<InputDialogPageHomeChecklist> createState() =>
      _InputDialogPageHomeChecklistState();
}

class _InputDialogPageHomeChecklistState
    extends State<InputDialogPageHomeChecklist> {
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
                  "Add checklist",
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
                  label: 'Checklist Name',
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
                labelText: 'Checklist Name',
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
                        builder: (context) => const ConfimationDialogHome(),
                      ),
                    );
                  }
                },
                child: Text(
                  "Create",
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
