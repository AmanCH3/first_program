import 'package:first_program/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataTable2 extends StatefulWidget {
  const DataTable2({super.key});

  @override
  State<DataTable2> createState() => _DataTable2State();
}

class _DataTable2State extends State<DataTable2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data")),
      body:  SizedBox(
        height: double.infinity,
        width:  double.infinity,
        child:  DataTable(
            headingRowColor: MaterialStateColor.resolveWith(
                (states) => Colors.amber
            ), columns: const[
              DataColumn(label: Text(
                "Name" ,
                textAlign: TextAlign.center,
              )) ,
          DataColumn(label: Text(
            "Roll Number" ,
            textAlign: TextAlign.center,
          ))
        ], rows: const [
          DataRow(cells: [
            DataCell(Center(
              child: Text(
                "Jhon" ,

              ),
            )) ,
            DataCell(Center(
              child: Text(
                '12'
              ),
            ))
          ])
        ],
        ),

      ) ,
    ) ;
  }
}
