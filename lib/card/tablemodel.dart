import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/material.dart';
import 'package:projectmed/card/wbc_count.dart';

import 'package:flutter/material.dart';
// main method that runs the runApp.

class tablemodel extends StatelessWidget {
  const tablemodel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
          child: Column(
        children: [
          //page
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Abnormal cell information',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '2 October 2022',
                          style: TextStyle(color: Colors.blue[200]),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                //search
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'What are you looking at? ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),

          //** */
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25.0),
              height: 500,
              color: Colors.grey[200],
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Abnormal cell of non-myeloid ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                            // Datatable widget that have the property columns and rows.
                            columns: [
                              // Set the name of the column
                              DataColumn(
                                label: Text('cell type'),
                              ),
                              DataColumn(
                                label: Text('absolute value%'),
                              ),
                              DataColumn(
                                label: Text('Relative Value(cell/mm^3)'),
                              ),
                            ], rows: [
                          // Set the values to the columns
                          DataRow(cells: [
                            DataCell(Text("Neutrophils")),
                            DataCell(Text("60-70")),
                            DataCell(Text("3000-7000")),
                          ]),
                          DataRow(cells: [
                            DataCell(Text("Eosinophils")),
                            DataCell(Text("1-4")),
                            DataCell(Text("50-400")),
                          ]),
                          DataRow(cells: [
                            DataCell(Text("Basophils")),
                            DataCell(Text("0.5-1.0")),
                            DataCell(Text("25-100")),
                          ]),
                          DataRow(cells: [
                            DataCell(Text("Lymphocytes")),
                            DataCell(Text("20-30")),
                            DataCell(Text("1500-4000")),
                          ]),
                          DataRow(cells: [
                            DataCell(Text("Monocytes")),
                            DataCell(Text("26")),
                            DataCell(Text("100-500")),
                          ]),
                        ]),
                        //table2
                      ),
                    ),
                    




                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
