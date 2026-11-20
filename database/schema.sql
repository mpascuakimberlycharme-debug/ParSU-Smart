
CREATE DATABASE IF NOT EXISTS parsu_smart
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE parsu_smart;

CREATE TABLE academic_term (
    term_id INT NOT NULL AUTO_INCREMENT,
    academic_year VARCHAR(20) NOT NULL,
    semester VARCHAR(30) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    PRIMARY KEY (term_id),
    UNIQUE KEY academic_year (academic_year, semester)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE osas_staff (
    staff_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    position VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    username VARCHAR(50) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL,
    PRIMARY KEY (staff_id),
    UNIQUE KEY email (email),
    UNIQUE KEY username (username)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE requirement_type (
    requirement_id INT NOT NULL AUTO_INCREMENT,
    requirement_name VARCHAR(150) NOT NULL,
    description TEXT,
    PRIMARY KEY (requirement_id),
    UNIQUE KEY requirement_name (requirement_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE scholarships (
    scholarship_id INT NOT NULL AUTO_INCREMENT,
    scholarship_name VARCHAR(150) NOT NULL,
    description TEXT,
    eligibility_criteria TEXT NOT NULL,
    application_start_date DATE NOT NULL,
    application_end_date DATE NOT NULL,
    PRIMARY KEY (scholarship_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE students (
    student_id INT NOT NULL AUTO_INCREMENT,
    student_number VARCHAR(30) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100) DEFAULT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    contact_number VARCHAR(20) DEFAULT NULL,
    course VARCHAR(100) NOT NULL,
    year_level INT NOT NULL,
    registration_date DATE DEFAULT NULL,
    created_date TIMESTAMP NULL DEFAULT NULL,
    PRIMARY KEY (student_id),
    UNIQUE KEY student_number (student_number),
    UNIQUE KEY email (email),
    CONSTRAINT chk_year_level CHECK (year_level BETWEEN 1 AND 6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE applications (
    application_id INT NOT NULL AUTO_INCREMENT,
    student_id INT NOT NULL,
    scholarship_id INT NOT NULL,
    term_id INT NOT NULL,
    assigned_staff_id INT DEFAULT NULL,
    submission_date DATETIME NOT NULL,
    current_status VARCHAR(50) NOT NULL DEFAULT 'Pending',
    PRIMARY KEY (application_id),
    KEY student_id (student_id),
    KEY scholarship_id (scholarship_id),
    KEY term_id (term_id),
    KEY assigned_staff_id (assigned_staff_id),
    CONSTRAINT applications_ibfk_1
        FOREIGN KEY (student_id) REFERENCES students (student_id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT applications_ibfk_2
        FOREIGN KEY (scholarship_id) REFERENCES scholarships (scholarship_id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT applications_ibfk_3
        FOREIGN KEY (term_id) REFERENCES academic_term (term_id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT applications_ibfk_4
        FOREIGN KEY (assigned_staff_id) REFERENCES osas_staff (staff_id)
        ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE scholarship_requirement (
    scholarship_id INT NOT NULL,
    requirement_id INT NOT NULL,
    is_mandatory TINYINT(1) NOT NULL,
    PRIMARY KEY (scholarship_id, requirement_id),
    KEY requirement_id (requirement_id),
    CONSTRAINT scholarship_requirement_ibfk_1
        FOREIGN KEY (scholarship_id) REFERENCES scholarships (scholarship_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT scholarship_requirement_ibfk_2
        FOREIGN KEY (requirement_id) REFERENCES requirement_type (requirement_id)
        ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE application_status_history (
    application_id INT NOT NULL,
    history_no INT NOT NULL,
    status VARCHAR(50) NOT NULL,
    remarks TEXT,
    updated_by INT NOT NULL,
    status_date DATETIME NOT NULL,
    PRIMARY KEY (application_id, history_no),
    KEY updated_by (updated_by),
    CONSTRAINT application_status_history_ibfk_1
        FOREIGN KEY (application_id) REFERENCES applications (application_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT application_status_history_ibfk_2
        FOREIGN KEY (updated_by) REFERENCES osas_staff (staff_id)
        ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE submitted_document (
    document_id INT NOT NULL AUTO_INCREMENT,
    application_id INT NOT NULL,
    requirement_id INT NOT NULL,
    file_name VARCHAR(255) NOT NULL,
    submission_date DATETIME NOT NULL,
    verification_status VARCHAR(50) NOT NULL,
    verified_by INT DEFAULT NULL,
    PRIMARY KEY (document_id),
    KEY application_id (application_id),
    KEY requirement_id (requirement_id),
    KEY verified_by (verified_by),
    CONSTRAINT submitted_document_ibfk_1
        FOREIGN KEY (application_id) REFERENCES applications (application_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT submitted_document_ibfk_2
        FOREIGN KEY (requirement_id) REFERENCES requirement_type (requirement_id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT submitted_document_ibfk_3
        FOREIGN KEY (verified_by) REFERENCES osas_staff (staff_id)
        ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
