import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class JobTableComponent extends StatefulWidget {
  const JobTableComponent({super.key});

  @override
  State<JobTableComponent> createState() => _JobTableComponentState();
}

class _JobTableComponentState extends State<JobTableComponent> {
  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, String>> _allJobs = [
    {
      'Prio': 'B1.121B',
      'Job': 'ABCU1234567',
      'Type': 'Delivery',
      'Truck': 'MMP-432-88',
      'Location': '1',
      'Area': 'B3',
      'Age': '126min',
      'Distance': '250m',
      'Action': 'Accept'
    },
    {
      'Prio': 'MMP-432-88',
      'Job': 'BLPU1234567',
      'Type': 'Receive',
      'Truck': 'C1.121B',
      'Location': '0',
      'Area': 'B3',
      'Age': '50',
      'Distance': '20m',
      'Action': 'Accept'
    },
    {
      'Prio': 'D4.121B',
      'Job': 'XHUK1234567',
      'Type': 'Load',
      'Truck': 'TTR',
      'Location': '2',
      'Area': 'B3',
      'Age': '126min',
      'Distance': '150m',
      'Action': 'Accept'
    },
    {
      'Prio': 'TTR',
      'Job': 'MSKU1234567',
      'Type': 'Discharge',
      'Truck': 'IMPORT',
      'Location': '0',
      'Area': 'B3',
      'Age': '126min',
      'Distance': '150m',
      'Action': 'Accept'
    },
    {
      'Prio': 'B1.121B',
      'Job': 'ABCU1234567',
      'Type': 'Delivery',
      'Truck': 'MMP-432-88',
      'Location': '1',
      'Area': 'B3',
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
              // scrollDirection: Axis.horizontal,
              child: Container(
                width: (MediaQuery.of(context).size.width),
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
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
                  columns: const [
                    DataColumn(
                        label: Text('Type',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Container',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('From',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('To',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Time',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Distance',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Shifts',
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
                        DataCell(Text(job['Type']!)),
                        DataCell(Text(job['Job']!)),
                        DataCell(Text(job['Prio']!)),
                        DataCell(Text(job['Truck']!)),
                        
                        
                        DataCell(Text(job['Age']!)),
                         DataCell(Text(job['Distance']!)),
                        DataCell(Text(job['Location']!)),
                       
                        DataCell(Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                              
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor:
                                      Theme.of(context).colorScheme.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
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
