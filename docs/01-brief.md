 Project Brief: ParSU-SMART
 
 1. The problem

The Office of Student Affairs and Services (OSAS) of Partido State University manages student scholarship applications and records. Tracking student information, scholarship requirements, submitted documents, and application statuses can be difficult when records are handled manually. ParSU-SMART provides a centralized system for organizing scholarship records.

 2. Users and what they need to do

| User role              | What they need to do in the app |
| Student                | View scholarships and submit applications and required documents. |
| OSAS Staff / Admin     | Manage student records, scholarships, requirements, documents, and application statuses. |

 3. The database behind it

Database name: ParSU-SMART
Database system: MySQL

| Table                        | Purpose |
| STUDENT                      | Stores student information. 
| OSAS_STAFF                   | Stores OSAS staff information. 
| SCHOLARSHIP                  | Stores scholarship details. 
| ACADEMIC_TERM                | Stores academic year and semester. 
| REQUIREMENT_TYPE             | Stores types of required documents. 
| SCHOLARSHIP_APPLICATION      | Records scholarship applications. 
| SCHOLARSHIP_REQUIREMENT      | Connects scholarships with requirements. 
| SUBMITTED_DOCUMENT           | Records documents submitted by students. 
| APPLICATION_STATUS_HISTORY   | Tracks application status changes. 

 4. Must-have features

1. Add, view, edit, and delete student records using STUDENT.
2. Add and manage scholarship information using SCHOLARSHIP.
3. Submit and manage applications using SCHOLARSHIP_APPLICATION.
4. Manage academic terms using ACADEMIC_TERM.
5. Manage document requirements and submissions using REQUIREMENT_TYPE, SCHOLARSHIP_REQUIREMENT, and SUBMITTED_DOCUMENT.
6. Track application status changes and manage staff records using APPLICATION_STATUS_HISTORY and OSAS_STAFF.

5. Nice-to-have features

- Generate scholarship application reports.
- Search and filter student and application records.
- Send notifications about application deadlines and status updates.

6. Similar apps I looked at

1. DOST-SEI E-Scholarship Application System – Borrow the online scholarship application process.
2. CHED scholarship services – Borrow the organized scholarship information and application process.
