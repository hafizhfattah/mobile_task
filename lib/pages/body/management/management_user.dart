import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils.dart';

class ManagementUser extends StatefulWidget {
  const ManagementUser({Key? key}) : super(key: key);

  @override
  State<ManagementUser> createState() => _ManagementUserState();
}

class _ManagementUserState extends State<ManagementUser> {
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: black,
          centerTitle: false,
          title: Text(
            "Management User",
            style: GoogleFonts.montserrat(
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView.builder(
            itemCount: 5,
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
                        title: Text(
                          "${index + 1}. Ahmad",
                          style: GoogleFonts.montserrat(
                            letterSpacing: 1,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text(
                          "123@gmail.com || Admin",
                          style: GoogleFonts.montserrat(
                            letterSpacing: 1,
                            fontWeight: FontWeight.w500,
                          ),
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
    );
  }
}
