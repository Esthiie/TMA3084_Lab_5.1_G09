
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_state.dart';

class ProgrammePage extends StatelessWidget {
  const ProgrammePage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppStateManager>();

    return DefaultTabController(
      length: 6,
      child: Column(
        children: [
          Container(
            color: Colors.blue,
            child: const TabBar(
              isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.yellow,
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'SE'),
                Tab(text: 'CS'),
                Tab(text: 'MC'),
                Tab(text: 'DE'),
                Tab(text: 'NC'),
              ],
            ),
          ),

          Expanded(
            child: TabBarView(
              children: [
                buildStudentList(state, 'ALL'),
                buildStudentList(state, 'SE'),
                buildStudentList(state, 'CS'),
                buildStudentList(state, 'MC'),
                buildStudentList(state, 'DE'),
                buildStudentList(state, 'NC'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStudentList(
      AppStateManager state, String programmeCode) {

    final students = programmeCode == 'ALL'
        ? state.records
        : state.records
        .where((s) => s.programmeCode == programmeCode)
        .toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              programmeCode == 'ALL'
                  ? 'All Students'
                  : 'Programme: $programmeCode',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        Expanded(
          child: students.isEmpty
              ? const Center(
            child: Text('No student records found'),
          )
              : ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: students.length,
            itemBuilder: (context, index) {
              final student = students[index];

              return Card(
                elevation: 2,
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    student.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Matric No: ${student.matricNo}\n'
                        'Programme: ${student.programmeCode}\n'
                        'Email: ${student.email}\n'
                        'Year: ${student.yearOfStudy}\n'
                        'CGPA: ${student.cgpa.toStringAsFixed(2)}',
                  ),
                  isThreeLine: true,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
<<<<<<< HEAD
=======

class StudentInfoPage extends StatelessWidget {
  const StudentInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Students Info Page',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
>>>>>>> b321609383fe1c22387b1dafbe0a39237cd176c9
