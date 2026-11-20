
USE parsu_smart;

-- Academic Term
INSERT INTO academic_term
(term_id, academic_year, semester, start_date, end_date)
VALUES
(1, '2026-2027', '1st Semester', '2026-08-01', '2026-12-31');

-- OSAS Staff
INSERT INTO osas_staff
(staff_id, first_name, last_name, position, email, username, password_hash, role)
VALUES
(1, 'Alex', 'Reyes', 'Scholarship Coordinator',
 'alex.reyes@example.com', 'alexreyes', 'sample_hash_123', 'Staff');

-- Requirement Types
INSERT INTO requirement_type
(requirement_id, requirement_name, description)
VALUES
(1, 'Certificate of Registration', 'Proof of current enrollment'),
(2, 'Grades or Report of Grades', 'Academic record of the student'),
(3, 'Certificate of Indigency', 'Proof of financial need');

-- Scholarships
INSERT INTO scholarships
(scholarship_id, scholarship_name, description, eligibility_criteria,
 application_start_date, application_end_date)
VALUES
(1, 'Academic Scholarship',
 'Sample scholarship for academic performance',
 'Open', '2023-07-01', '2023-08-01'),
(2, 'Student Assistance Scholarship',
 'Sample scholarship for student assistance',
 'Open', '2023-07-15', '2023-08-10');

-- Students
INSERT INTO students
(student_id, student_number, first_name, middle_name, last_name,
 email, contact_number, course, year_level, registration_date, created_date)
VALUES
(1, 'SAMPLE-2026-001', 'Alex', NULL, 'Reyes',
 'alex.reyes@example.com', NULL, 'BS Information Technology', 2,
 NULL, '2026-10-29 06:11:27'),
(2, 'SAMPLE-2026-002', 'Jose', NULL, 'Fortuna',
 'jamie.santos@example.com', NULL, 'BS Information Technology', 3,
 NULL, '2026-10-29 06:11:27'),
(3, '2026-0001', 'Jamie', 'Santos', 'Cruz',
 'jamie.cruz@example.com', '09123456789', 'BS Information Technology', 2,
 '2026-08-01', '2026-11-19 11:46:28');

-- Applications
INSERT INTO applications
(application_id, student_id, scholarship_id, term_id, assigned_staff_id,
 submission_date, current_status)
VALUES
(1, 1, 1, 1, 1, '2026-11-19 19:53:05', 'Under Review'),
(2, 1, 2, 1, 1, '2026-11-19 19:53:05', 'Under Review');

-- Scholarship Requirements
INSERT INTO scholarship_requirement
(scholarship_id, requirement_id, is_mandatory)
VALUES
(1, 1, 1),
(1, 2, 1),
(2, 1, 1),
(2, 3, 1);

-- Application Status History
INSERT INTO application_status_history
(application_id, history_no, status, remarks, updated_by, status_date)
VALUES
(1, 1, 'Pending', 'Application submitted successfully', 1, '2026-11-19 19:54:58'),
(1, 2, 'Under Review', 'Documents are being checked', 1, '2026-11-19 19:54:58'),
(2, 1, 'Pending', 'Application submitted successfully', 1, '2026-11-19 19:54:58'),
(2, 2, 'Under Review', 'Documents are being checked', 1, '2026-11-19 19:54:58');

-- Submitted Documents
INSERT INTO submitted_document
(document_id, application_id, requirement_id, file_name,
 submission_date, verification_status, verified_by)
VALUES
(1, 1, 1, 'COR_Jamie.pdf', '2026-11-19 19:53:51', 'Verified', 1),
(2, 1, 2, 'Grades_Jamie.pdf', '2026-11-19 19:53:51', 'Pending', NULL),
(3, 2, 1, 'COR_Jamie.pdf', '2026-11-19 19:53:51', 'Verified', 1),
(4, 2, 3, 'Indigency_Jamie.pdf', '2026-11-19 19:53:51', 'Pending', NULL);
