import 'package:flutter/material.dart';

class DoubleScroollTableView extends StatelessWidget {
  const DoubleScroollTableView({super.key});

  final List<Map<String, String>> jobs = const [
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
      'Area': 'B3',
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
      'Area': 'B3',
      'Age': '126min',
      'Distance': '150m',
      'Action': 'Accept'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical, // Scroll vertical
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Scroll horizontal
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
          child: DataTable(
            headingRowColor: MaterialStateColor.resolveWith(
              (states) => Colors.blue.shade50,
            ),
            columns: const [
              DataColumn(label: Text('Prio', style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(label: Text('Job', style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(label: Text('Type', style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(label: Text('Truck', style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(label: Text('Location', style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(label: Text('Area', style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(label: Text('Age', style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(label: Text('Distance', style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(label: Text('Action', style: TextStyle(fontWeight: FontWeight.bold))),
            ],
            rows: jobs.map((job) {
              return DataRow(
                cells: [
                  DataCell(Text(job['Prio']!)),
                  DataCell(Text(job['Job']!)),
                  DataCell(Text(job['Type']!)),
                  DataCell(Text(job['Truck']!)),
                  DataCell(Text(job['Location']!)),
                  DataCell(Text(job['Area']!)),
                  DataCell(Text(job['Age']!)),
                  DataCell(Text(job['Distance']!)),
                  DataCell(
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Ação para ${job['Job']}")),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('Accept'),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
