import 'package:flutter/material.dart';
import 'package:material_table_view/material_table_view.dart';

class TesteMaterial extends StatelessWidget {
  const TesteMaterial({super.key});

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

  bool noDataYetFor(int row) => false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Horizontal scrolling
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width), // Prevent overflow
              child: TableView.builder(
                columns: [
                  const TableColumn(width: 80.0, freezePriority: 100),
                  for (var i = 1; i < 6; i++) const TableColumn(width: 100),
                ],
                rowCount: jobs.length,
                rowHeight: 56.0,
                rowBuilder: (context, row, contentBuilder) {
                  if (noDataYetFor(row)) return null;

                  final isEven = row % 2 == 0;
                  final job = jobs[row];

                  return Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      onTap: () => print('Linha $row clicada'),
                      child: Container(
                        color: isEven ? Colors.grey.shade100 : Colors.white,
                        child: contentBuilder(
                          context,
                          (context, column) {
                            switch (column) {
                              case 0:
                                return Center(child: Text(job['Prio']!));
                              case 1:
                                return Center(child: Text(job['Job']!));
                              case 2:
                                return Center(child: Text(job['Type']!));
                              case 3:
                                return Center(child: Text(job['Truck']!));
                              case 4:
                                return Center(child: Text(job['Location']!));
                              case 5:
                                return Center(child: Text(job['Area']!));
                              case 6:
                                return Center(child: Text(job['Age']!));
                              case 7:
                                return Center(child: Text(job['Distance']!));
                              case 8:
                                return ElevatedButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text("Ação para ${job['Job']}")),
                                    );
                                  },
                                  child: const Text('Accept'),
                                );
                              default:
                                return const SizedBox.shrink();
                            }
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
