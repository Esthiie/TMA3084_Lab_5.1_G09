# AI Usage Log (LOGAI.md) - Lab 5 (StudentHub App)

* **Student Name:** Daiyanti anak Juit
* **Matric Number:** 103756
* **Group:** Team 09 (TMA3084 Lab 5.1)
* **Feature Developed:** Profile and About Page (`profile_about_page.dart`)

---

## 1. Overview of AI Tools Used
During this lab, **Gemini Pro** was utilized exclusively as the primary AI productivity platform for architectural brainstorming, UI layout structuring, code generation, and live debugging.

* **Gemini Pro:** Provided comprehensive support across the entire software development lifecycle—from designing custom widget trees (such as `Stack`, `Container`, and `CircleAvatar` for layered headers) to resolving compilation and positioning bugs.

---

## 2. Summary of AI Prompts & Responses

### Prompt 1: UI Layout Structure for Profile Header
* **Tool:** Gemini Pro
* **Prompt:** *"How do I create a layered profile header in Flutter using a Stack widget where a profile avatar overlaps a colored container banner?"*
* **AI Output:** Provided clean, well-structured Dart code utilizing `SizedBox`, `Stack`, `Container`, and a `Positioned` widget with `MediaQuery` to accurately center the `CircleAvatar`.
* **Integration Decision:** Adopted the proposed widget architecture and adjusted the positioning calculation (`MediaQuery.of(context).size.width / 2 - 50`) to cleanly align the developer details card.

### Prompt 2: Debugging Layout Positioning & Syntax
* **Tool:** Gemini Pro
* **Prompt:** *"Fix this error in my Positioned widget where the left property calculation has a syntax break: left: MediaQuery.of(context).size.width / 2 50"*
* **AI Output:** Pinpointed the missing minus sign and supplied the corrected code snippet (`- 50`).
* **Integration Decision:** Immediately applied the correction to ensure seamless compilation and clean execution.

---

## 3. Reflection on AI-Assisted Development
* **Efficiency & Workflow:** Using Gemini Pro stream-lined code implementation, allowing for rapid iteration on Flutter layout constraints and responsive design patterns.
* **Problem Solving:** Interactive troubleshooting helped quickly resolve syntax errors and understand proper widget hierarchy management within a collaborative project environment.



---

# AI Usage Log - Reselda (106131)

* **Student Name:** Reselda Anak Robie
* **Matric Number:** 106131
* **Group:** Team 09 (TMA3084 Lab 5.1)
* **Feature Developed:** Student Records Page (`student_records_page.dart`)

---

## 1. Overview of AI Tools Used
**Claude** was used as a step-by-step guide for the Student Records page: setting up the Git branch, structuring the `DataTable` page with Provider, fixing analyzer errors, and drafting the individual report. I wrote and edited the code myself in VS Code and tested it against the group's files.

---

## 2. Summary of AI Prompts & Responses

### Prompt 1: Planning the Student Records page
* **Tool:** Claude
* **Prompt:** *"Can you a guide me to plan for my part in this lab task which is student records page"*
* **AI Output:** Gave a step-by-step plan: a `Student` model with sample data, a `DataTable` page, sorting with `sortColumnIndex`, `sortAscending` and `onSort`, and hooking the page into the app navigation.
* **Integration Decision:** Accepted the plan. Rejected the suggestion to create my own `Student` model and `models/` and `data/` folders, because my teammate's `app_state.dart` already held the student records and sorting state, and two versions would conflict.

### Prompt 2: Rewriting my skeleton to use the group's state
* **Tool:** Claude
* **Prompt:** *"Suggest a better way to write my skeleton especially on the sorting"*
* **AI Output:** Rewrote the page as a `StatelessWidget` that reads records and sort state from `AppStateManager` using `context.watch`, with no `Scaffold` or `AppBar`. It left the Age sorting line for me to write.
* **Integration Decision:** Accepted the structure. I wrote the Age `onSort` line myself by following the Name pattern (`state.sortRecords((s) => s.age, columnIndex, ascending)`).

### Prompt 3: Fixing analyzer errors
* **Tool:** Claude
* **Prompt:** *"What are the major problems that I need to fix before i push to Github?"* (followed by the exported Problems list)
* **AI Output:** Traced most errors to one typo, `package:flutter.material.dart` instead of `package:flutter/material.dart`, and identified a stray character on one line. It also explained that the missing `HomePage`, `StudentInfoPage` and `ProgramTabPage` errors belonged to teammates' unfinished pages, and that `widget_test.dart` still referred to `MyApp`.
* **Integration Decision:** Fixed the import typo and the stray character myself. Left the teammates' errors alone and reported the `widget_test.dart` problem to the group.

---

## 3. Reflection on AI-Assisted Development
* **Efficiency & Workflow:** Step-by-step guidance helped me understand each `DataTable` widget before writing it, and the analyzer error explanation saved time. I still had to adjust the AI's suggestions to fit the group's actual files.
* **Problem Solving:** Several AI suggestions did not match our project at first (its own model, invented ages, extra folders). I checked each one against my teammate's code and the lab requirements before accepting it, and rejected the ones that did not fit.

---

# AI Usage Log - Estherne (104062)

* **Student Name:** Estherne Liow Ker Yin
* **Matric Number:** 104062
* **Group:** Team 09 (TMA3084 Lab 5.1)
* **Feature Developed:** Programme Page (`programme_page.dart`)

---

## 1. Overview of AI Tools Used
**Gemini** was used to check for major errors and typo that cannot be detected inside the overall coding, mainly 'home_page.dart' to connect all dart codings. I have written and modified some of the codes since they may work but did not show proper output.

---

## 2. Summary of AI Prompts & Responses

### Prompt 1: Import standalone package material_ui to flutter 3.47
* **Tool:** Gemini
* **Prompt:** *"I have already typed dart format . and have changed the names of the files. Why does it still show errors?"*
* **AI Output:** Flutter 3.47 has migrated to material_ui and cupertino_ui packages for future work. Recommeded to enter 'flutter pub add material_ui' into the terminal and replace all 'import 'package:flutter/material.dart'' to 'import 'package:material_ui/material_ui.dart''.
* **Integration Decision:** Accepted and updated the flutter version 3.47. Actions cl files has been successful.

### Prompt 2: Linking other coding to home_page.dart
* **Tool:** Gemini
* **Prompt:** *"Some of the dart coding are inside different folders. How can I link and import written data/student.dart into home_page.dart?"*
* **AI Output:** Write 'import page/student.dart' in the header to link them to home_page.dart.
* **Integration Decision:** Suggestion denied. It does not fully resolve the conflict and disconnection, so I opted for redirecting 'student.dart' from data folder into lib folder.

---

## 3. Reflection on AI-Assisted Development
* **Efficiency & Workflow:** It certainly help with fixing errors that require a lot of time to go through each files. However, I feel like it took more time to properly debug the application and pushing/pulling github since I can type much faster without refering to prompts.
* **Problem Solving:** I think AI suggestions have 50% correctness in solving problems, thus human invention is still required to check each code one by one.

---

# AI Usage Log - Vanessa (106615)

* **Student Name:** Vanessa Fedillia Anak Mathew
* **Matric Number:** 106615
* **Group:** Team 09 (TMA3084 Lab 5.1)
* **Feature Developed:** Home Page (`home_page.dart`) and Student Details Page (`student_details_page.dart`)

---

## 1. Overview of AI Tools Used
**Claude** was used for UI/UX layout brainstorming, widget selection advice, and visual consistency alignment with teammates' pages. All my part Dart code was written manually using AI suggestions only as an architectural reference and moving my work into the group repository with Git branches.

---

## 2. Summary of AI Prompts & Responses

### Prompt 1: Adjusting the data and the Details page
* **Tool:** Claude
* **Prompt:**"Here is the list of student attributes for our Student Details page (name, matric number, programme, email, semester, CGPA). Suggest a clean Material 3 Flutter layout format to organize this information clearly."*
* **AI Output:** Provided a structured widget layout grouping the student profile header at the top and organizing the attributes into clean `Card` and `ListTile` sections with `SelectableText`.
* **Integration Decision:** Accepted. Used the suggested visual hierarchy and card grouping as a reference while writing my own Dart code manually. I replaced the AI's hardcoded sample text with our group's shared `Student` model and adjusted the padding so it fits smaller screens properly.

### Prompt 2: Temporary Student List for testing
* **Tool:** Claude
* **Prompt:** *"can we make the student list like this with these sorting kind of things and also the search bar"*
* **AI Output:** A temporary `temp_pages.dart` with a search bar, programme filter chips and a list that opens my Student Details page.
* **Integration Decision:** Used only for local testing. Rejected for the group repository, because the Student Information page belongs to a teammate.

### Prompt 3: Grammar and formatting
* **Tool:** Claude
* **Prompt:** I asked Claude to check my writing and my grammar.
* **AI Output:** Corrected grammar and rewrote my prompts into clearer sentences.
* **Integration Decision:** Accepted after reading through each section and checking that it still describes what I actually did. I filled in my own details and screenshots.

---

## 3. Reflection on AI-Assisted Development
* **Efficiency & Workflow:** Going through the code one file at a time helped me understand what each widget does, such as `StatelessWidget` versus `StatefulWidget`, `SelectableText`, and how `StudentDetailsPage(student: student)` passes data between pages. The AI also helped me fix Git mistakes, such as moving a commit to the correct branch.
* **Problem Solving:** Not every suggestion was right the first time (wrong file names, duplicated welcome text, removing the wrong section). I checked each change by running `dart format` and `flutter analyze` (No issues found) and testing on the emulator before committing.

---
