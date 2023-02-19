import 'package:fluid_dialog/fluid_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/widget.dart';
import '../detail_task.dart';

class HomeTimeline extends StatefulWidget {
  const HomeTimeline({Key? key}) : super(key: key);

  @override
  State<HomeTimeline> createState() => _HomeTimelineState();
}

class _HomeTimelineState extends State<HomeTimeline> {
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
                builder: (context) => const InputDialogPageHome(),
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
      body: SafeArea(
        child: ListView.builder(
          itemCount: 1,
          physics: const ScrollPhysics(),
          padding: const EdgeInsets.all(10),
          itemBuilder: (BuildContext context, int index) {
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onLongPress: () {
                  showDialog<void>(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Actions",
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
                        ),
                        content: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListBody(children: <Widget>[
                              SizedBox(
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    // backgroundColor: Colors.indigo,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          12), // <-- Radius
                                    ),
                                  ),
                                  onPressed: () async {},
                                  child: Text(
                                    "Edit",
                                    style: GoogleFonts.montserrat(
                                      letterSpacing: 1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              SizedBox(
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    // backgroundColor: Colors.indigo,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          12), // <-- Radius
                                    ),
                                  ),
                                  onPressed: () async {},
                                  child: Text(
                                    "Deleted",
                                    style: GoogleFonts.montserrat(
                                      letterSpacing: 1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailTask()),
                      );
                    },
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailTask()),
                        );
                      },
                      icon: GestureDetector(
                        onTap: () {
                          showDialog<void>(
                            context: context,
                            barrierDismissible: true,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Actions",
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
                                ),
                                content: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListBody(children: <Widget>[
                                      SizedBox(
                                        height: 50,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            // backgroundColor: Colors.indigo,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      12), // <-- Radius
                                            ),
                                          ),
                                          onPressed: () async {},
                                          child: Text(
                                            "Edit",
                                            style: GoogleFonts.montserrat(
                                              letterSpacing: 1,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      SizedBox(
                                        height: 50,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            // backgroundColor: Colors.indigo,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      12), // <-- Radius
                                            ),
                                          ),
                                          onPressed: () async {},
                                          child: Text(
                                            "Deleted",
                                            style: GoogleFonts.montserrat(
                                              letterSpacing: 1,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: const Icon(
                          Icons.edit,
                        ),
                      ),
                    ),
                    title: Text(
                      "1. Create Video",
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
