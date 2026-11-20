CRUD Map: ParSU-SMART

1. CRUD Operations by Database Table

| Database Table      |              Page                      | Create | Read | Update |  Delete |

  STUDENT     -                Student Management      -        Yes     - Yes    - Yes     - Yes 

  OSAS_STAFF  -                Staff Management        -        Yes     - Yes    - Yes     - Yes 

  SCHOLARSHIP -                Scholarship Management  -        Yes     - Yes    - Yes     - Yes 

  ACADEMIC_TERM -              Academic Term Management -       Yes     - Yes    - Yes     - Yes 

  REQUIREMENT_TYPE             Requirement Management -         Yes     - Yes    - Yes     - Yes 

  SCHOLARSHIP_APPLICATION -    Application Management -         Yes     - Yes    - Yes     - Yes 

  SCHOLARSHIP_REQUIREMENT -    Scholarship Requirements -       Yes     - Yes    - Yes     - Yes 

  SUBMITTED_DOCUMENT -         Document Management -            Yes     - Yes    - Yes     - Yes 

  APPLICATION_STATUS_HISTORY - Application Details -            Yes    - Yes    - Yes     - Yes 

2. User Roles and Permissions

User Role               Allowed Actions 
Student - View scholarships, submit applications, upload documents, and view application status. |
OSAS Staff / Admin - Manage student records, scholarships, academic terms, requirements, documents, and applications. |

3. Pages and Their Purpose

1. Dashboard – Displays scholarship and application summaries.
2. Student Management – Manages student information.
3. Scholarship Management – Manages available scholarships.
4. Academic Term Management – Manages academic terms.
5. Application Management – Reviews and manages applications.
6. Requirement Management – Manages document requirements.
7. Document Management – Reviews submitted documents.
8. Staff Management – Manages OSAS staff information.
9. Application Details – Displays application information and status history.

4. Notes

- Students can only access their own application records.
- OSAS Staff manage scholarship applications and student records.
- Application status history is maintained as a record of status changes.
- Deletion must follow the database foreign key constraints and referential integrity rules.
