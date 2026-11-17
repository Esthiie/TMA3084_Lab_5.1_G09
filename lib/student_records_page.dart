import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';

// Student Records Page displays student data using a DataTable widget
// Data is managed through Provider (AppStateManager)
class StudentRecordsPage extends StatelessWidget {
  const StudentRecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppStateManager>();

    if (state.records.isEmpty) {
      return const Center(
        child: Text('No student records available'),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Student Records',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              sortColumnIndex: state.sortColumnIndex,
              sortAscending: state.sortAscending,
              columns: [
                const DataColumn(label: Text('Matric No')),
                DataColumn(
                  label: const Text('Name'),
                  onSort: (columnIndex, ascending) {
                    state.sortRecords(
                          (s) => s.name,
                      columnIndex,
                      ascending,
                    );
                  },
                ),
                const DataColumn(label: Text('Programme')),
                const DataColumn(
                  label: Text('Year'),
                  numeric: true,
                ),
                DataColumn(
                  label: const Text('CGPA'),
                  numeric: true,
                  onSort: (columnIndex, ascending) {
                    state.sortRecords(
                          (s) => s.cgpa,
                      columnIndex,
                      ascending,
                    );
                  },
                ),
              ],
              rows: state.records.map((record) {
                return DataRow(
                  cells: [
                    DataCell(Text(record.matricNo)),
                    DataCell(Text(record.name)),
                    DataCell(Text(record.programmeCode)),
                    DataCell(Text('${record.yearOfStudy}')),
                    DataCell(
                      Text(record.cgpa.toStringAsFixed(2)),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}