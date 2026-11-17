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