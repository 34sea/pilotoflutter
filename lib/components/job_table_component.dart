import 'package:flutter/material.dart';

class JobTableComponent extends StatelessWidget {
  const JobTableComponent({super.key});

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
    
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, 
      child: DataTable(
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.grey.shade200),
        columns: const [
          DataColumn(label: Text('Prio')),
          DataColumn(label: Text('Job')),
          DataColumn(label: Text('Type')),
          DataColumn(label: Text('Truck')),
          DataColumn(label: Text('Location')),
          DataColumn(label: Text('Area')),
          DataColumn(label: Text('Age')),
          DataColumn(label: Text('Distance')),
          DataColumn(label: Text('Action')),
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
                  child: const Text('Accept'),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
