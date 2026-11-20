
CRUD MAP: ParSU-SMART

1. CRUD OPERATIONS BY DATABASE TABLE


| Database Table           | Page                      | Create | Read  | Update | Delete |

| students                 | Student Management        | Yes    | Yes   | Yes    |  Yes   |
  
| osas_staff               | Staff Management          | Yes    | Yes   | Yes    |  Yes   |

| scholarships             | Scholarship Management    | Yes    | Yes   | Yes    |  Yes   |

| academic_term            | Academic Term Management  | Yes    | Yes   | Yes    |  Yes   |

| requirement_type         | Requirement Management    | Yes    | Yes   | Yes    |  Yes   |

| applications             | Application Management    | Yes    | Yes   | Yes    |  Yes   |

| scholarship_requirement  | Scholarship Requirements  | Yes    | Yes   | Yes    |  Yes   |

| submitted_document       | Document Management       | Yes    | Yes   | Yes    |  Yes   |

| application_status_history | Application Details     | Yes    | Yes   | No     |  No    |

Note: CRUD operations represent the planned system functions. Actual deletion must follow the database foreign key constraints.

2. USER ROLES AND PERMISSIONS

Student

- View available scholarships.
- Submit scholarship applications.
- Upload required documents.
- View their own application status.

OSAS Staff / Admin

- Manage student records.
- Manage scholarship information.
- Manage academic terms and requirements.
- Review scholarship applications.
- Verify submitted documents.
- Monitor application status history.
- Manage OSAS staff records.

3. PAGES AND THEIR PURPOSE

1. Dashboard - Displays scholarship and application summaries.
2. Student Management - Manages student information.
3. Scholarship Management - Manages available scholarships.
4. Academic Term Management - Manages academic terms.
5. Application Management - Reviews and manages applications.
6. Requirement Management - Manages document requirements.
7. Document Management - Reviews submitted documents.
8. Staff Management - Manages OSAS staff information.
9. Application Details - Displays application information and status history.

4. NOTES

- Students can only access their own application records.
- OSAS Staff manage scholarship applications and student records.
- Application status history maintains a record of status changes.
- Status history records should not be manually edited or deleted.
- Deletion must follow database foreign key constraints and referential integrity rules.
- The database uses primary keys and foreign keys to maintain relationships between records.
