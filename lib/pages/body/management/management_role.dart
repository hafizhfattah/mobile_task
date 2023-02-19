import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class ManagementRole extends StatefulWidget {
  const ManagementRole({Key? key}) : super(key: key);

  @override
  State<ManagementRole> createState() => _ManagementRoleState();
}

class _ManagementRoleState extends State<ManagementRole> {
  List role = ["Admin", "User"];

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: black,
          centerTitle: false,
          title: Text(
            "Management Role",
            style: GoogleFonts.montserrat(
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: ListView.builder(
              itemCount: role.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
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
                          subtitle: Text(
                            "Role No ${index + 1}",
                            style: GoogleFonts.montserrat(
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          title: Row(
                            children: [
                              Text(
                                "${role[index]}",
                                style: GoogleFonts.montserrat(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
