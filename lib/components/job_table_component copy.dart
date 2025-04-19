import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:pilotoflutter/model/job_model.dart';
import 'package:pilotoflutter/model/move_view.dart';
import 'package:pilotoflutter/utils/colors_utils.dart';

class JobTableComponent extends StatefulWidget {
  const JobTableComponent({super.key});

  @override
  State<JobTableComponent> createState() => _JobTableComponentState();
}

class _JobTableComponentState extends State<JobTableComponent> {
  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, String>> _allJobs = [
    {
      'Prio': '1',
      'Job': 'XYZ',
      'Type': 'Receive',
      'Truck': 'ABC123',
      'Location': 'B3-289-3',
      'Area': 'B3',
      'Age': '126min',
      'Distance': '250m',
      'Action': 'Accept'
    },
    {
      'Prio': '2',
      'Job': 'ZBS',
      'Type': 'Receive',
      'Truck': 'ABC123',
      'Location': 'B3-289-3',
      'Area': 'B3',
      'Age': '50',
      'Distance': '20m',
      'Action': 'Accept'
    },
    {
      'Prio': '3',
      'Job': 'XYZ',
      'Type': 'Receive',
      'Truck': 'ABC123',
      'Location': 'B3-289-3',
      'Area': 'B3',
      'Age': '126min',
      'Distance': '150m',
      'Action': 'Accept'
    },
    {
      'Prio': '4',
      'Job': 'XYZ',
      'Type': 'Receive',
      'Truck': 'ABC123',
      'Location': 'B3-289-3',
      'Area': 'B3',
      'Age': '126min',
      'Distance': '150m',
      'Action': 'Accept'
    },
    {
      'Prio': '5',
      'Job': 'XYZ',
      'Type': 'Receive',
      'Truck': 'ABC123',
      'Location': 'B3-289-3',
      'Area': 'B3',
      'Age': '126min',
      'Distance': '150m',
      'Action': 'Accept'
    },
    {
      'Prio': '6',
      'Job': 'XYZ',
      'Type': 'Receive',
      'Truck': 'ABC123',
      'Location': 'B3-289-3',
      'Area': 'B3',
      'Age': '126min',
      'Distance': '250m',
      'Action': 'Accept'
    },
    {
      'Prio': '7',
      'Job': 'ZBS',
      'Type': 'Receive',
      'Truck': 'ABC123',
      'Location': 'B3-289-3',
      'Area': 'B4',
      'Age': '50',
      'Distance': '20m',
      'Action': 'Accept'
    },
    {
      'Prio': '8',
      'Job': 'XYZ',
      'Type': 'Receive',
      'Truck': 'ABC123',
      'Location': 'B3-289-3',
      'Area': 'B3',
      'Age': '126min',
      'Distance': '150m',
      'Action': 'Accept'
    },
    {
      'Prio': '9',
      'Job': 'XYZ',
      'Type': 'Receive',
      'Truck': 'ABC123',
      'Location': 'B3-289-3',
      'Area': 'B3',
      'Age': '126min',
      'Distance': '150m',
      'Action': 'Accept'
    },
    {
      'Prio': '10',
      'Job': 'XYZ',
      'Type': 'Receive',
      'Truck': 'ABC123',
      'Location': 'B3-289-3',
      'Area': 'B5',
      'Age': '126min',
      'Distance': '150m',
      'Action': 'Accept'
    },
  ];

  List<Map<String, String>> _filteredJobs = [];

  @override
  void initState() {
    super.initState();
    _filteredJobs = _allJobs;
    _searchController.addListener(_filterJobs);
  }

  void _filterJobs() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredJobs = _allJobs.where((job) {
        return job.values.any((value) => value.toLowerCase().contains(query));
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Pesquisar job...',
              labelStyle: TextStyle(
                color: Color(0xFF999999),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xFF999999),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF999999), width: 2),
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
                child: DataTable(
                  headingRowColor: MaterialStateColor.resolveWith(
                    (states) => ColorsUtils.secondaryColor,
                  ),
                  columns: const [
                    DataColumn(
                        label: Text('Prio',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Job',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Type',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Truck',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Location',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Area',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Age',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Distance',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Action',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                  rows: List.generate(_filteredJobs.length, (index) {
                    final job = _filteredJobs[index];
                    final isEven = index % 2 == 0;
                    final rowColor =
                        isEven ? Colors.white : Color(0xFFF7F7F7); //color zebra

                    return DataRow(
                      color: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        return rowColor;
                      }),
                      cells: [
                        DataCell(Text(job['Prio']!)),
                        DataCell(Text(job['Job']!)),
                        DataCell(Text(job['Type']!)),
                        DataCell(Text(job['Truck']!)),
                        DataCell(Text(job['Location']!)),
                        DataCell(Text(job['Area']!)),
                        DataCell(Text(job['Age']!)),
                        DataCell(Text(job['Distance']!)),
                        DataCell(Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MoveView(items: JobModel.fromMap(job)),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor:
                                      Theme.of(context).colorScheme.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 1),
                              child: Row(
                                // mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text('Accept'),
                                  // SizedBox(width: 5),
                                  // Icon(Icons.arrow_forward),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                print("No present");
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.redAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 0),
                              child: Row(
                                // mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text('Not present'),
                                  // SizedBox(width: 5),
                                  // Icon(Icons.arrow_forward),
                                ],
                              ),
                            ),
                          ],
                        )
                            // ElevatedButton(
                            //   onPressed: () {
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (context) =>
                            //             MoveView(items: JobModel.fromMap(job)),
                            //       ),
                            //     );
                            //   },
                            //   style: ElevatedButton.styleFrom(
                            //     backgroundColor: Colors.white,
                            //     foregroundColor: Colors.black,
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(5),
                            //     ),
                            //     // elevation: 0
                            //   ),
                            //   child: Row(
                            //     mainAxisSize: MainAxisSize.min,
                            //     children: const [
                            //       Text('Accept'),
                            //       SizedBox(width: 5),
                            //       Icon(Icons.arrow_forward),
                            //     ],
                            //   ),
                            // ),
                            ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
