import 'package:flutter/material.dart';

import 'student.dart';
import 'StudentDetailsPage.dart';

// Student data
final List<Student> studentData = [
  Student(
    name: 'Estherne Liow',
    matricNo: '100101',
    programmeCode: 'SE',
    email: '100101@siswa.unimas.my',
    yearOfStudy: 3,
    cgpa: 3.90,
  ),
  Student(
    name: 'Reselda Robie',
    matricNo: '100102',
    programmeCode: 'CS',
    email: '100102@siswa.unimas.my',
    yearOfStudy: 3,
    cgpa: 3.80,
  ),
  Student(
    name: 'Daiyanti Juit',
    matricNo: '100103',
    programmeCode: 'MC',
    email: '100103@siswa.unimas.my',
    yearOfStudy: 2,
    cgpa: 3.65,
  ),
  Student(
    name: 'Norasyikin Amirah',
    matricNo: '100104',
    programmeCode: 'DE',
    email: '100104@siswa.unimas.my',
    yearOfStudy: 3,
    cgpa: 3.70,
  ),
  Student(
    name: 'Vanessa Fedillia',
    matricNo: '100105',
    programmeCode: 'NC',
    email: '100105@siswa.unimas.my',
    yearOfStudy: 2,
    cgpa: 3.55,
  ),
  Student(
    name: 'Sara Lee',
    matricNo: '100106',
    programmeCode: 'MC',
    email: '100106@siswa.unimas.my',
    yearOfStudy: 4,
    cgpa: 3.85,
  ),
  Student(
    name: 'Bala Subaramaniam',
    matricNo: '100107',
    programmeCode: 'CS',
    email: '100107@siswa.unimas.my',
    yearOfStudy: 1,
    cgpa: 3.40,
  ),
  Student(
    name: 'Michael Tan',
    matricNo: '100108',
    programmeCode: 'DE',
    email: '100108@siswa.unimas.my',
    yearOfStudy: 2,
    cgpa: 3.25,
  ),
  Student(
    name: 'Farah Aziz',
    matricNo: '100109',
    programmeCode: 'NC',
    email: '100109@siswa.unimas.my',
    yearOfStudy: 4,
    cgpa: 3.60,
  ),
  Student(
    name: 'David Ng',
    matricNo: '100110',
    programmeCode: 'SE',
    email: '100110@siswa.unimas.my',
    yearOfStudy: 1,
    cgpa: 3.50,
  ),
];

class StudentInformationPage extends StatefulWidget {
  const StudentInformationPage({super.key});

  @override
  State<StudentInformationPage> createState() => _StudentInformationPageState();
}

class _StudentInformationPageState extends State<StudentInformationPage> {
  final TextEditingController searchController = TextEditingController();

  String selectedProgramme = 'All';

  final Map<String, String> programmes = {
    'All': 'ALL',
    'Software Engineering': 'SE',
    'Computational Science': 'CS',
    'Multimedia Computing': 'MC',
    'Data Engineering': 'DE',
    'Network Computing': 'NC',
  };

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  List<Student> get filteredStudents {
    return studentData.where((student) {
      final searchText = searchController.text.toLowerCase();

      final matchesSearch =
          student.name.toLowerCase().contains(searchText) ||
          student.matricNo.toLowerCase().contains(searchText);

      final selectedCode = programmes[selectedProgramme];

      final matchesProgramme =
          selectedProgramme == 'All' || student.programmeCode == selectedCode;

      return matchesSearch && matchesProgramme;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final students = filteredStudents;

    return Column(
      children: [
        // Search bar
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
          child: TextField(
            controller: searchController,
            onChanged: (value) {
              setState(() {});
            },
            decoration: InputDecoration(
              hintText: 'Search student...',
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              suffixIcon: searchController.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        searchController.clear();
                        setState(() {});
                      },
                    )
                  : null,
              filled: true,
              fillColor: const Color(0xFFF0F2F5),
              contentPadding: const EdgeInsets.symmetric(vertical: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),

        // Programme filter chips
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: programmes.keys.map((programme) {
              final isSelected = selectedProgramme == programme;

              return ChoiceChip(
                label: Text(
                  programme,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                selected: isSelected,
                showCheckmark: false,
                selectedColor: const Color(0xFF1479E8),
                backgroundColor: const Color(0xFFF0F2F5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide.none,
                ),
                onSelected: (selected) {
                  setState(() {
                    selectedProgramme = programme;
                  });
                },
              );
            }).toList(),
          ),
        ),

        const SizedBox(height: 12),

        // Student list
        Expanded(
          child: students.isEmpty
              ? const Center(
                  child: Text(
                    'No students found',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
                  itemCount: students.length,
                  itemBuilder: (context, index) {
                    final student = students[index];

                    return Card(
                      elevation: 2,
                      color: Colors.white,
                      margin: const EdgeInsets.only(bottom: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),

                        // Student avatar
                        leading: const CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xFFE3EEFF),
                          child: Icon(
                            Icons.person,
                            size: 34,
                            color: Color(0xFF5B9DEF),
                          ),
                        ),

                        // Student information
                        title: Text(
                          student.name,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                student.matricNo,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                student.programmeCode,
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Navigate to student details
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  StudentDetailsPage(student: student),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
