// ignore_for_file: use_build_context_synchronously

import 'package:fluid_dialog/fluid_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_task/pages/auth/signin_page.dart';

import 'package:mobile_task/pages/body/management/management_account.dart';
import 'package:mobile_task/pages/body/management/management_menu.dart';
import 'package:mobile_task/pages/body/management/management_role.dart';
import 'package:mobile_task/pages/body/management/management_user.dart';
import '../../utils/const.dart';
import '../../utils/widget.dart';
import 'dashboard_page.dart';
import 'homepage/homemenu/home_completed.dart';
import 'homepage/homemenu/home_inreview.dart';
import 'homepage/homemenu/home_onhold.dart';
import 'homepage/homemenu/home_open.dart';
import 'homepage/homemenu/home_progress.dart';
import 'homepage/homemenu/home_timeline.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MyController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: white,
      appBar: AppBar(
        centerTitle: false,
        // backgroundColor: Colors.black,
        title: Row(
          children: [
            Text(
              "Welcome John",
              style: GoogleFonts.montserrat(
                letterSpacing: 1,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            MenuBar(
              children: <Widget>[
                SubmenuButton(
                  leadingIcon: const Icon(
                    Icons.settings,
                  ),
                  menuChildren: <Widget>[
                    MenuItemButton(
                      onPressed: () {
                        setState(() {
                          c.isActive.value = !c.isActive.value;
                        });
                      },
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                c.isActive.value = !c.isActive.value;
                              });
                            },
                            icon: c.isActive.value
                                ? const Icon(Icons.dark_mode_rounded)
                                : const Icon(Icons.light_mode_rounded),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Darkmode",
                            style: GoogleFonts.montserrat(
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MenuItemButton(
                      onPressed: () {
                        showDialog<void>(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Row(
                                children: [
                                  Text(
                                    "About",
                                    style: GoogleFonts.montserrat(
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Spacer(),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () => Navigator.pop(context),
                                      child: const Icon(
                                        Icons.close_rounded,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              content: SingleChildScrollView(
                                child: ListBody(children: <Widget>[
                                  Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                    style: GoogleFonts.montserrat(
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ]),
                              ),
                            );
                          },
                        );
                      },
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.info_rounded,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "About",
                            style: GoogleFonts.montserrat(
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  child: Text(
                    "Settings",
                    style: GoogleFonts.montserrat(
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
          ],
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
                        // color: white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ));
                })
          ],
        ),
      ),

      //Body
      body: SafeArea(
        child: ListView(
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
      ),
    );
  }
}
