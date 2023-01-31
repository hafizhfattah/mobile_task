// ignore_for_file: use_build_context_synchronously

import 'package:fluid_dialog/fluid_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_task/pages/auth/signin_page.dart';
import 'package:mobile_task/pages/body/homepage/home_completed.dart';
import 'package:mobile_task/pages/body/homepage/home_inreview.dart';
import 'package:mobile_task/pages/body/homepage/home_onhold.dart';
import 'package:mobile_task/pages/body/homepage/home_open.dart';
import 'package:mobile_task/pages/body/homepage/home_progress.dart';
import 'package:mobile_task/pages/body/management/management_account.dart';
import 'package:mobile_task/pages/body/management/management_menu.dart';
import 'package:mobile_task/pages/body/management/management_role.dart';
import 'package:mobile_task/pages/body/management/management_user.dart';

import '../../utils.dart';
import 'dashboard_page.dart';
import 'homepage/home_timeline.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: white,
      appBar: AppBar(
        centerTitle: false,
        // backgroundColor: Colors.black,
        title: Text(
          "HomePage",
          style: GoogleFonts.montserrat(
            letterSpacing: 1,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      //Drawer
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerMenu(
              icon: Icon(
                Icons.dashboard,
              ),
              judul: "Dashboard",
              route: Dashboardpage(),
            ),
            ExpansionTile(
              leading: const Icon(
                CupertinoIcons.list_dash,
              ),
              title: Text(
                "Boards",
                style: GoogleFonts.montserrat(
                  // color: black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              children: [
                ListTile(
                  leading: const Icon(Icons.add_to_photos_rounded),
                  title: Text(
                    "Create a new board",
                    style: GoogleFonts.montserrat(
                      // color: Colors.red,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () async {
                    showDialog(
                      context: context,
                      builder: (context) => FluidDialog(
                        rootPage: FluidDialogPage(
                          alignment: Alignment.center,
                          builder: (context) => const InputDialogPage(),
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.business_sharp),
                  title: Text(
                    "PT Pertamina (Persero)",
                    style: GoogleFonts.montserrat(
                      // color: black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.business_sharp),
                  title: Text(
                    "PT PLN (Persero)",
                    style: GoogleFonts.montserrat(
                      // color: black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.business_sharp),
                  title: Text(
                    "PT Gudang Garam",
                    style: GoogleFonts.montserrat(
                      // color: black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.business_sharp),
                  title: Text(
                    "PT Astra International Tbk",
                    style: GoogleFonts.montserrat(
                      // color: black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            const DrawerMenu(
              icon: Icon(Icons.manage_accounts_rounded),
              judul: "Manage Account",
              route: ManagementAccount(),
            ),
            const DrawerMenu(
              icon: Icon(
                Icons.person,
              ),
              judul: "Management User",
              route: ManagementUser(),
            ),
            const DrawerMenu(
              icon: Icon(
                CupertinoIcons.person_2_fill,
              ),
              judul: "Management Role",
              route: ManagementRole(),
            ),
            const DrawerMenu(
              icon: Icon(
                CupertinoIcons.square_favorites_fill,
              ),
              judul: "Management Menu",
              route: ManagementMenu(),
            ),
            ListTile(
                leading: const Icon(
                  Icons.logout,
                ),
                title: Text(
                  "Logout",
                  style: GoogleFonts.montserrat(
                    // color: black,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () async {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const SignIn()),
                  );
                  await Future.delayed(
                      const Duration(milliseconds: 300), () {});

                  //SnackBar
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    // backgroundColor: black,
                    content: Text(
                      "Success Logout",
                      style: GoogleFonts.montserrat(
                        color: white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ));
                })
          ],
        ),
      ),

      //Body
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const SizedBox(
            height: 20.0,
          ),
          const MenuTask(
            total: 3,
            warna: Colors.black,
            judul: "Timeline",
            route: HomeTimeline(),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const MenuTask(
            total: 9,
            warna: Colors.red,
            judul: "Open",
            route: HomeOpen(),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const MenuTask(
            total: 4,
            warna: Colors.blue,
            judul: "Progress",
            route: HomeProgress(),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const MenuTask(
            total: 16,
            warna: Colors.yellow,
            judul: "On Hold",
            route: HomeOnhold(),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const MenuTask(
            total: 12,
            warna: Colors.indigo,
            judul: "In Review",
            route: HomeInReview(),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const MenuTask(
            total: 23,
            warna: Colors.green,
            judul: "Completed",
            route: HomeCompleted(),
          ),
          Container(),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

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
                            fontWeight: FontWeight.w500,
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
