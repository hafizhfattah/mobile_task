// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_task/pages/auth/signin_page.dart';
import 'package:mobile_task/pages/body/homepage/home_completed.dart';
import 'package:mobile_task/pages/body/homepage/home_inreview.dart';
import 'package:mobile_task/pages/body/homepage/home_onhold.dart';
import 'package:mobile_task/pages/body/homepage/home_open.dart';
import 'package:mobile_task/pages/body/homepage/home_progress.dart';
import 'package:mobile_task/pages/body/management/management_menu.dart';
import 'package:mobile_task/pages/body/management/management_role.dart';
import 'package:mobile_task/pages/body/management/management_user.dart';

import '../../utils.dart';
import 'dashboard_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black,
        title: Text(
          "HomePage",
          style: GoogleFonts.montserrat(
            letterSpacing: 1,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
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
                  color: black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              children: [
                ListTile(
                  leading: const Icon(Icons.business_sharp),
                  title: Text(
                    "PT Pertamina (Persero)",
                    style: GoogleFonts.montserrat(
                      color: black,
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
                      color: black,
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
                      color: black,
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
                      color: black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
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
                    color: black,
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
                    backgroundColor: black,
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
