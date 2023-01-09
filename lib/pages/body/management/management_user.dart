import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils.dart';

class ManagementUser extends StatefulWidget {
  const ManagementUser({Key? key}) : super(key: key);

  @override
  State<ManagementUser> createState() => _ManagementUserState();
}

class _ManagementUserState extends State<ManagementUser> {
  final DataTableSource _data = MyData();

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
        body: ListView(
          children: [
            PaginatedDataTable(
              initialFirstRowIndex: 1,
              dataRowHeight: 50,
              source: _data,
              columns: const [
                DataColumn(numeric: false, label: Text('ID')),
                DataColumn(numeric: false, label: Text('Name')),
                DataColumn(numeric: true, label: Text('Price'))
              ],
              columnSpacing: 120,
              horizontalMargin: 12,
              rowsPerPage: 6,
              showFirstLastButtons: true,
              sortAscending: true,
              showCheckboxColumn: true,
            ),
          ],
        ),
      ),
    );
  }
}

// The "soruce" of the table
class MyData extends DataTableSource {
  // Generate some made-up data
  final List<Map<String, dynamic>> _data = List.generate(
      200,
      (index) => {
            "id": index,
            "title": "Item $index ",
            "price": Random().nextInt(10000)
          });

  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['id'].toString())),
      DataCell(Text(_data[index]["title"])),
      DataCell(Text(_data[index]["price"].toString())),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;
}
