import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class champInfo extends StatefulWidget {
  String champName = '';
  champInfo({champName, super.key});

  @override
  State<champInfo> createState() => _champInfoState();
}

class _champInfoState extends State<champInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
          backgroundColor: Colors.white,
          appBarTheme: AppBarTheme(backgroundColor: Colors.white)),
      home: campInfo(champ: 'test'),
    );
  }
}

class campInfo extends StatelessWidget {
  final String champ;
  const campInfo({super.key, required this.champ});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HES.GG",
          style: TextStyle(color: Colors.black, fontSize: 60),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          iconSize: 50,
          onPressed: () {},
        ),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('챔피언 분석'),
                style: TextButton.styleFrom(minimumSize: Size(300, 50)),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('유저 랭킹'),
                style: TextButton.styleFrom(minimumSize: Size(300, 50)),
              )
            ]),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Container(
                  height: 700.0,
                  width: 280,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DataTable(columns: [
                        DataColumn(
                          label: Text(
                            '챔피언',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '카운터',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '주요랭크',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ], rows: [
                        DataRow(cells: [
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                        ]),
                      ]),
                      DataTable(columns: [
                        DataColumn(
                          label: Text(
                            '챔피언',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '카운터',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '주요랭크',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ], rows: [
                        DataRow(cells: [
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                        ]),
                      ]),
                      DataTable(columns: [
                        DataColumn(
                          label: Text(
                            '챔피언',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '카운터',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '주요랭크',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ], rows: [
                        DataRow(cells: [
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                        ]),
                      ]),
                      DataTable(columns: [
                        DataColumn(
                          label: Text(
                            '챔피언',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '카운터',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '주요랭크',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ], rows: [
                        DataRow(cells: [
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                        ]),
                      ]),
                      DataTable(columns: [
                        DataColumn(
                          label: Text(
                            '챔피언',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '카운터',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            '주요랭크',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ], rows: [
                        DataRow(cells: [
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                        ]),
                      ]),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                    height: 650,
                    width: 600,
                    //color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Row(children: [
                          Image.asset(
                            'assets/images/zed.png',
                            width: 150,
                            height: 150,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Container(
                            width: 250,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              '제드',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          )
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    //color: Colors.blue,
                                    height: 400,
                                    child: DataTable(
                                      columnSpacing: 60,
                                      headingRowHeight: 170,
                                      columns: [
                                        DataColumn(
                                          label: Image.asset(
                                            'assets/images/cal.png',
                                            width: 70,
                                            height: 70,
                                          ),
                                        ),
                                        DataColumn(
                                            label: Text(
                                          '주요 룬',
                                          style: TextStyle(fontSize: 30),
                                        )),
                                        DataColumn(
                                            label: Text(
                                          '',
                                          style: TextStyle(fontSize: 30),
                                        )),
                                      ],
                                      rows: [
                                        DataRow(
                                          cells: [
                                            DataCell(Text('')),
                                            DataCell(Text('')),
                                            DataCell(Text('')),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(
                                              Text(''),
                                            ),
                                            DataCell(Text('')),
                                            DataCell(Text('')),
                                          ],
                                        ),
                                        DataRow(
                                          cells: [
                                            DataCell(
                                              Text(''),
                                            ),
                                            DataCell(Text('')),
                                            DataCell(Text('')),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  DataTable(columns: [
                                    DataColumn(
                                      label: Text(''),
                                    ),
                                    DataColumn(
                                      label: Text('보조룬'),
                                    ),
                                    DataColumn(
                                      label: Text(''),
                                    ),
                                  ], rows: [
                                    DataRow(cells: [
                                      DataCell(Text('')),
                                      DataCell(Text('')),
                                      DataCell(Text('')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('')),
                                      DataCell(Text('')),
                                      DataCell(Text('')),
                                    ]),
                                  ]),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  DataTable(columns: [
                                    DataColumn(
                                      label: Text(''),
                                    ),
                                    DataColumn(
                                      label: Text('챔피언 승률'),
                                    ),
                                    DataColumn(
                                      label: Text(''),
                                    ),
                                  ], rows: [
                                    DataRow(cells: [
                                      DataCell(Text('')),
                                      DataCell(Text('')),
                                      DataCell(Text('')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('')),
                                      DataCell(Text('')),
                                      DataCell(Text('')),
                                    ]),
                                  ]),
                                ],
                              ),
                            ]),
                      ],
                    ))
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
