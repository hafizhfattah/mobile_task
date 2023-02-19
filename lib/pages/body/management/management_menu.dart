import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class ManagementMenu extends StatefulWidget {
  const ManagementMenu({Key? key}) : super(key: key);

  @override
  State<ManagementMenu> createState() => _ManagementMenuState();
}

class _ManagementMenuState extends State<ManagementMenu> {
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: black,
          centerTitle: false,
          title: Text(
            "Management Menu",
            style: GoogleFonts.montserrat(
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Slidable(
                endActionPane: ActionPane(
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      onPressed: (value) {},
                      backgroundColor: Colors.blue[300]!,
                      foregroundColor: Colors.white,
                      icon: Icons.edit,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    SlidableAction(
                      flex: 2,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      onPressed: (value) {},
                      backgroundColor: Colors.red[300]!,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                    ),
                  ],
                ),
                child: Card(
                  child: ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    onTap: () {},
                    title: Text(
                      "1. Dashboard",
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      "Menu Parent: 0, Route: /u/dashboard",
                      style: GoogleFonts.montserrat(
                        color: Colors.indigo,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.dashboard,
                      // color: black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Slidable(
                endActionPane: ActionPane(
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      onPressed: (value) {},
                      backgroundColor: Colors.blue[300]!,
                      foregroundColor: Colors.white,
                      icon: Icons.edit,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    SlidableAction(
                      flex: 2,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      onPressed: (value) {},
                      backgroundColor: Colors.red[300]!,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                    ),
                  ],
                ),
                child: Card(
                  child: ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    onTap: () {},
                    title: Text(
                      "2. Boards",
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      "Menu Parent: 0,",
                      style: GoogleFonts.montserrat(
                        color: Colors.indigo,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: const Icon(
                      CupertinoIcons.list_dash,
                      // color: black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Slidable(
                endActionPane: ActionPane(
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      onPressed: (value) {},
                      backgroundColor: Colors.blue[300]!,
                      foregroundColor: Colors.white,
                      icon: Icons.edit,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    SlidableAction(
                      flex: 2,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      onPressed: (value) {},
                      backgroundColor: Colors.red[300]!,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                    ),
                  ],
                ),
                child: Card(
                  child: ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    onTap: () {},
                    title: Text(
                      "3. Management User",
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      "Menu Parent: 0, Route: /u/management_user",
                      style: GoogleFonts.montserrat(
                        color: Colors.indigo,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.person,
                      // color: black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Slidable(
                endActionPane: ActionPane(
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      onPressed: (value) {},
                      backgroundColor: Colors.blue[300]!,
                      foregroundColor: Colors.white,
                      icon: Icons.edit,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    SlidableAction(
                      flex: 2,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      onPressed: (value) {},
                      backgroundColor: Colors.red[300]!,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                    ),
                  ],
                ),
                child: Card(
                  child: ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    onTap: () {},
                    title: Text(
                      "4. Management Role",
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      "Menu Parent: 0, Route: /u/management_role",
                      style: GoogleFonts.montserrat(
                        color: Colors.indigo,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: const Icon(
                      CupertinoIcons.person_2_fill,
                      // color: black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Slidable(
                endActionPane: ActionPane(
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      onPressed: (value) {},
                      backgroundColor: Colors.blue[300]!,
                      foregroundColor: Colors.white,
                      icon: Icons.edit,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    SlidableAction(
                      flex: 2,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      onPressed: (value) {},
                      backgroundColor: Colors.red[300]!,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                    ),
                  ],
                ),
                child: Card(
                  child: ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    onTap: () {},
                    title: Text(
                      "5. Management Menu",
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      "Menu Parent: 5, Route: /u/management_menu",
                      style: GoogleFonts.montserrat(
                        color: Colors.indigo,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: const Icon(
                      CupertinoIcons.square_favorites_fill,
                      // color: black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
