# 🎓 Student Tracker

![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Database-orange?style=for-the-badge&logo=databricks&logoColor=white)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen?style=for-the-badge)

> *"Data is the new oil — and those who learn to refine it, shape the future."*

A comprehensive **Student Performance & Attendance Tracker** built with MySQL — empowering educational institutions to manage student records, monitor attendance, analyze performance, and generate meaningful reports that drive better decisions.

---

## ✨ About The Project

Education deserves better tools. This project was built with the belief that every student's journey — their attendance, their growth, their performance — deserves to be tracked with care and precision. By harnessing the power of relational databases, **Student Tracker** turns raw data into actionable insights that help educators uplift every learner.


---

## 📌 Table of Contents

- [Overview](#-overview)
- [Database Schema](#-database-schema)
- [Table Structures](#-table-structures)
- [SQL Concepts Covered](#-sql-concepts-covered)
- [How to Run](#-how-to-run)
- [Project Structure](#-project-structure)

---

## 🧭 Overview

The **Student Tracker** system is a relational database project designed to help educational institutions:

| Feature | Description |
|--------|-------------|
| 📋 Student & Faculty Management | Add, update, search, and remove records with ease |
| 📅 Attendance Tracking | Daily logging with Present, Absent, and Late statuses |
| 📊 Performance Analysis | Marks, grades, and subject-wise trend monitoring |
| 📈 Reports & Insights | Top performers, attendance defaulters, department analytics |

---

## 🗄️ Database Schema

```
┌─────────────────────────────────────────────────────────┐
│                     STUDENT TRACKER                     │
└─────────────────────────────────────────────────────────┘

  Departments
      │
      ├──► Faculty ──────────► Courses
      │                            │
      └──► Students ──────► Enrollments
               │
               ├──────────► Attendance
               │
               └──────────► Grades
```

---

## 📋 Table Structures

### 1. 🏛️ Departments

| Column | Type | Constraint |
|--------|------|------------|
| `department_id` | INT | PRIMARY KEY, AUTO_INCREMENT |
| `department_name` | VARCHAR(100) | NOT NULL |

---

### 2. 👨‍🏫 Faculty

| Column | Type | Constraint |
|--------|------|------------|
| `faculty_id` | INT | PRIMARY KEY, AUTO_INCREMENT |
| `name` | VARCHAR(100) | NOT NULL |
| `email` | VARCHAR(150) | UNIQUE |
| `phone_number` | VARCHAR(15) | — |
| `department_id` | INT | FOREIGN KEY → Departments |

---

### 3. 🎒 Students

| Column | Type | Constraint |
|--------|------|------------|
| `student_id` | INT | PRIMARY KEY, AUTO_INCREMENT |
| `name` | VARCHAR(100) | NOT NULL |
| `dob` | DATE | — |
| `gender` | ENUM | 'Male', 'Female', 'Other' |
| `email` | VARCHAR(150) | UNIQUE |
| `phone_number` | VARCHAR(15) | — |
| `address` | VARCHAR(255) | — |
| `admission_date` | DATE | — |
| `department_id` | INT | FOREIGN KEY → Departments |

---

### 4. 📚 Courses

| Column | Type | Constraint |
|--------|------|------------|
| `course_id` | INT | PRIMARY KEY, AUTO_INCREMENT |
| `course_name` | VARCHAR(150) | NOT NULL |
| `faculty_id` | INT | FOREIGN KEY → Faculty |

---

### 5. 📝 Enrollments

| Column | Type | Constraint |
|--------|------|------------|
| `enrollment_id` | INT | PRIMARY KEY, AUTO_INCREMENT |
| `student_id` | INT | FOREIGN KEY → Students |
| `course_id` | INT | FOREIGN KEY → Courses |
| `enrollment_date` | DATE | NOT NULL |
| *(student_id, course_id)* | — | UNIQUE — prevents duplicate enrollment |

---

### 6. 📅 Attendance

| Column | Type | Constraint |
|--------|------|------------|
| `attendance_id` | INT | PRIMARY KEY, AUTO_INCREMENT |
| `student_id` | INT | FOREIGN KEY → Students |
| `course_id` | INT | FOREIGN KEY → Courses |
| `attendance_date` | DATE | NOT NULL |
| `status` | ENUM | 'Present', 'Absent', 'Late' |

---

### 7. 🏆 Grades

| Column | Type | Constraint |
|--------|------|------------|
| `grade_id` | INT | PRIMARY KEY, AUTO_INCREMENT |
| `student_id` | INT | FOREIGN KEY → Students |
| `course_id` | INT | FOREIGN KEY → Courses |
| `marks_obtained` | DECIMAL(5,2) | — |
| `grade` | VARCHAR(5) | e.g. A+, B, C, F |

---

## 📦 Sample Data Summary

| Table | Records |
|-------|---------|
| Departments | 15 |
| Faculty | 15 |
| Students | 20 |
| Courses | 15 |
| Enrollments | 47+ |
| Attendance | 60+ |
| Grades | 47+ |

---

## 📚 SQL Concepts Covered

| # | Concept | Weightage | Status |
|---|---------|-----------|--------|
| 1 | CRUD Operations | Low | ✅ Done |
| 2 | WHERE / HAVING / LIMIT | Low | ✅ Done |
| 3 | AND / OR / NOT Operators | Medium | ✅ Done |
| 4 | ORDER BY / GROUP BY | Medium | ✅ Done |
| 5 | Aggregate Functions (SUM, AVG, MAX, MIN, COUNT) | High | ✅ Done |
| 6 | Primary & Foreign Key Relationships | High | ✅ Done |
| 7 | INNER / LEFT / RIGHT / FULL OUTER JOIN | High | ✅ Done |
| 8 | Subqueries | High | ✅ Done |
| 9 | Date & Time Functions | High | ✅ Done |
| 10 | String Manipulation Functions | High | ✅ Done |
| 11 | Window Functions (RANK, CUMULATIVE) | Very High | ✅ Done |
| 12 | CASE Expressions | Very High | ✅ Done |

---

## 🚀 How to Run

**Step 1** — Open your MySQL client (Workbench, DBeaver, or CLI)

**Step 2** — Import the script via terminal:
```bash
mysql -u root -p < student_performance_tracker.sql
```

**Step 3** — Verify the setup:
```bash
USE student_tracker;
SHOW TABLES;
```

---

## Project Explanation Video

I put the brief explanation video of this project in my repo to make it more clear.

I hope it will help you to understand the project well.

---

## 📁 Project Structure

```
student-tracker/
│
├── student_performance_tracker.sql   ← Main database script
└── README.md                         ← Project documentation
```

---

## 🌟 A Note to Fellow Learners

> *"The best time to start learning databases was yesterday.*
> *The second best time is right now."*

This project is more than an exam submission — it is a stepping stone.
Every query written, every join understood, every function mastered
brings you one step closer to becoming the developer you aspire to be.

**Dream big. Code bigger. 🚀**

---

## 👨‍💻 Author

<div align="center">

![Author](https://img.shields.io/badge/🚀_RENSEE_GAIPARA-Full_Stack_SQL_Developer-6C3483?style=for-the-badge)


![Visitor](https://img.shields.io/badge/Keep_Learning-Never_Stop-FF6B6B?style=for-the-badge)

*"Every expert was once a beginner. Every pro was once an amateur."*
*Keep building. Keep learning. Keep growing.* 💡

</div>
