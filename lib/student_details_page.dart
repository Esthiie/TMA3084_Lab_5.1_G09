import 'package:material_ui/material_ui.dart';

import 'student.dart';

class StudentDetailsPage extends StatelessWidget {
  final Student student;

  const StudentDetailsPage({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: Color(0xFFE3EEFF),
                    child: Icon(Icons.person, size: 50, color: Colors.blue),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  student.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(height: 30),
                Text('Student ID: ${student.matricNo}'),
                const SizedBox(height: 12),
                Text('Programme: ${student.programmeCode}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
