import 'package:fluid_dialog/fluid_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/widget.dart';

class DetailTask extends StatefulWidget {
  const DetailTask({Key? key}) : super(key: key);

  @override
  State<DetailTask> createState() => _DetailTaskState();
}

class _DetailTaskState extends State<DetailTask> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            // bool confirm = false;
            // showDialog<void>(
            //   context: context,
            //   barrierDismissible: true,
            //   builder: (BuildContext context) {
            //     return AlertDialog(
            //       title: Row(
            //         children: [
            //           Text(
            //             "Confirmation",
            //             style: GoogleFonts.montserrat(
            //               letterSpacing: 1,
            //               fontSize: 18,
            //               fontWeight: FontWeight.w600,
            //             ),
            //           ),
            //           const Spacer(),
            //           GestureDetector(
            //             onTap: () => Navigator.pop(context),
            //             child: const Icon(
            //               Icons.close_rounded,
            //             ),
            //           ),
            //         ],
            //       ),
            //       content: SingleChildScrollView(
            //         child: ListBody(
            //           children: <Widget>[
            //             Text(
            //               "Are you sure you want to save the progress?",
            //               style: GoogleFonts.montserrat(
            //                 letterSpacing: 1,
            //                 fontWeight: FontWeight.w500,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       actions: <Widget>[
            //         ElevatedButton(
            //           style: ElevatedButton.styleFrom(),
            //           onPressed: () {
            //             confirm = true;
            //             Navigator.pop(context);
            //             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //               // backgroundColor: black,
            //               content: Text(
            //                 "Your Progress Saved",
            //                 style: GoogleFonts.montserrat(
            //                   // color: white,
            //                   letterSpacing: 1,
            //                   fontWeight: FontWeight.w600,
            //                 ),
            //               ),
            //             ));
            //           },
            //           child: Text(
            //             "Yes",
            //             style: GoogleFonts.montserrat(
            //               letterSpacing: 1,
            //               fontWeight: FontWeight.w600,
            //             ),
            //           ),
            //         ),
            //       ],
            //     );
            //   },
            // );

            // if (confirm) {}
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
        ),
        appBar: AppBar(
          title: Text(
            "Create Video",
            style: GoogleFonts.montserrat(
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
            ),
          ),
          bottom: TabBar(
            unselectedLabelStyle: GoogleFonts.montserrat(
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
            ),
            labelStyle: GoogleFonts.montserrat(
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
            ),
            tabs: const [
              Tab(
                text: "Detail Task",
              ),
              Tab(
                text: "Options",
              ),
              Tab(
                text: "History",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              padding: const EdgeInsets.all(10),
              children: [
                Text(
                  "Progress:",
                  style: GoogleFonts.montserrat(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 9.0,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  decoration: const BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        99.0,
                      ),
                    ),
                  ),
                  child: Text(
                    "70%",
                    style: GoogleFonts.montserrat(
                      letterSpacing: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14.0,
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
                    icon: MenuBar(
                      children: [
                        SubmenuButton(
                          menuChildren: [
                            MenuItemButton(
                              onPressed: () {},
                              child: Text(
                                "Checklist",
                                style: GoogleFonts.montserrat(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            MenuItemButton(
                              onPressed: () {},
                              child: Text(
                                "Delete",
                                style: GoogleFonts.montserrat(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                          leadingIcon: const Icon(
                            Icons.settings,
                          ),
                          child: Text(
                            "Menu",
                            style: GoogleFonts.montserrat(
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
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
              ],
            ),
            ListView(
              children: [
                ListTile(
                  trailing: const Icon(
                    CupertinoIcons.forward,
                  ),
                  leading: const Icon(Icons.person),
                  title: Text(
                    "Assign Member",
                    style: GoogleFonts.montserrat(
                      // color: black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  trailing: const Icon(
                    CupertinoIcons.forward,
                  ),
                  leading: const Icon(Icons.date_range_rounded),
                  title: Text(
                    "Date Description",
                    style: GoogleFonts.montserrat(
                      // color: black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  trailing: const Icon(
                    CupertinoIcons.forward,
                  ),
                  leading: const Icon(Icons.description),
                  title: Text(
                    "Description",
                    style: GoogleFonts.montserrat(
                      // color: black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  trailing: const Icon(
                    CupertinoIcons.forward,
                  ),
                  leading: const Icon(Icons.info_outline_rounded),
                  title: Text(
                    "Status",
                    style: GoogleFonts.montserrat(
                      // color: black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  trailing: const Icon(
                    CupertinoIcons.forward,
                  ),
                  leading: const Icon(Icons.check_circle_rounded),
                  title: Text(
                    "Checklist",
                    style: GoogleFonts.montserrat(
                      // color: black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => FluidDialog(
                        rootPage: FluidDialogPage(
                          alignment: Alignment.center,
                          builder: (context) =>
                              const InputDialogPageHomeChecklist(),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            ListView.builder(
              itemCount: 5,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const Icon(
                    Icons.start_rounded,
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  subtitle: Text(
                    "Esse esse irure ex mollit ut tempor magna aliquip laboris.",
                    style: GoogleFonts.montserrat(
                      // color: black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  title: Row(
                    children: [
                      Text(
                        "31 January 2022",
                        style: GoogleFonts.montserrat(
                          // color: black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      const Icon(Icons.arrow_forward_rounded),
                      const SizedBox(
                        width: 8.0,
                      ),
                      index.isOdd
                          ? Text(
                              "Task Create By Johndoe",
                              style: GoogleFonts.montserrat(
                                // color: black,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          : Text(
                              "Task Deleted By Johndoe",
                              style: GoogleFonts.montserrat(
                                // color: black,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                    ],
                  ),
                  onTap: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
