
CREATE TABLE Department (
dept_id int PRIMARY KEY,
name varchar(255) NOT NULL,
FOREIGN KEY(faculty_id) REFERENCES Faculty(faculty_id),
FOREIGN KEY(student_id) REFERENCES Student(student_id)
);

CREATE TABLE Student (
student_id int PRIMARY KEY,
overallGPA float(3,2) NOT NULL,
stud_fname varchar(255) NOT NULL,
stud_lname varchar(255) NOT NULL,
gender char(1),
enrollmentYear date,
FOREIGN KEY(faculty_id) REFERENCES Faculty(faculty_id),
FOREIGN KEY(dept_id) REFERENCES Department(dept_id),
FOREIGN KEY(course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Courses (
course_id int PRIMARY KEY,
syllabus varchar(255),
coursename varchar(255) NOT NULL,
credits int(1),
capacity int(3) NOT NULL,
FOREIGN KEY(student_id) REFERENCES Student(student_id),
FOREIGN KEY(prof_id) REFERENCES Professors(prof_id),
FOREIGN KEY(prereq_id) REFERENCES PreReqs(prereq_id),
FOREIGN KEY(cost_id) REFERENCES Cost(cost_id),
FOREIGN KEY(waitlist_id) REFERENCES Waitlist(waitlist_id)
);

CREATE TABLE Faculty (
faculty_id int PRIMARY KEY,
email varchar(255),
FOREIGN KEY(student_id) REFERENCES Student(student_id),
FOREIGN KEY(dept_id) REFERENCES Department(dept_id),
FOREIGN KEY(prof_id) REFERENCES Professors(prof_id)
);

CREATE TABLE Professors (
prof_id int PRIMARY KEY,
prof_fname varchar(255) NOT NULL,
prof_lname varchar(255) NOT NULL,
gender char(1),
FOREIGN KEY(course_id) REFERENCES Courses(course_id),
FOREIGN KEY(faculty_id) REFERENCES Faculty(faculty_id)
);

CREATE TABLE PreReqs (
prereq_id int PRIMARY KEY,
FOREIGN KEY(course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Waitlist (
waitlist_id int PRIMARY KEY,
waitlistPriority int(2),
FOREIGN KEY(course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Cost (
cost_id int PRIMARY KEY,
costCourse float(6, 2), 
FOREIGN KEY(course_id) REFERENCES Courses(course_id)
);
