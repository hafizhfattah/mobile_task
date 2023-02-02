import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                GestureDetector(
                  onLongPress: () {
                    bool confirm = false;
                    showDialog<void>(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            "About",
                            style: GoogleFonts.montserrat(
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500,
                            ),
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
                          actions: <Widget>[
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "No",
                                style: GoogleFonts.montserrat(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(),
                              onPressed: () {
                                confirm = true;
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Yes",
                                style: GoogleFonts.montserrat(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );

                    if (confirm) {
                      debugPrint("-------------------");
                    }
                  },
                  child: Card(
                    child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: const NetworkImage(
                            "https://i.ibb.co/QrTHd59/woman.jpg",
                          ),
                        ),
                        title: const Text("Jessica Doe"),
                        trailing: const MenuBar(
                          children: [
                            SubmenuButton(
                              menuChildren: [
                                MenuItemButton(
                                  child: Text("text"),
                                )
                              ],
                              child: Icon(
                                Icons.developer_board,
                                size: 24.0,
                              ),
                            ),
                          ],
                        )),
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
                  onTap: () {},
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
