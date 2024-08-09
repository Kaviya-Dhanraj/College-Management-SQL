-- drop database college_5;
CREATE DATABASE college_6;
USE college_6;

-- department
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- students 
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address TEXT,
    department_id INT 
);

--  faculty 
CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    department_id INT  
);

-- fees
CREATE TABLE Fees (
    fee_id INT PRIMARY KEY,
    student_id INT,  
    amount DECIMAL(10, 2),
    due_date DATE,
    status VARCHAR(20),
    payment_date DATE
);

-- books
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    publisher VARCHAR(100),
    year_of_publication YEAR
);

-- library
CREATE TABLE Library (
    library_id INT PRIMARY KEY,
    student_id INT, 
    book_id INT,  
    issue_date DATE,
    return_date DATE,
    status VARCHAR(20)
);

-- gatepass
CREATE TABLE Gatepass (
    gatepass_id INT PRIMARY KEY,
    student_id INT,  
    reason TEXT,
    issue_date DATE,
    return_date DATE,
    status VARCHAR(20)
);

-- department
INSERT INTO Departments (department_id, department_name)
VALUES
(1, 'CSE'),  
(2, 'IT'),   
(3, 'AI&DS');

-- student
INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, email, phone_number, address, department_id)
VALUES
(1, 'Mohan', 'Das', '2003-01-15', 'Male', 'mohan.das@example.com', '9876543222', 'Address 1', 1),
(2, 'Lavanya', 'S', '2004-11-01', 'Female', 'lavanya.s@example.com', '9876543221', 'Address 2', 2),
(3, 'Radha', 'Krishnan', '2004-01-20', 'Female', 'radha.krishnan@example.com', '9876543227', 'Address 3', 3),
(4, 'Charan', 'R', '2003-07-29', 'Male', 'charan.r@example.com', '9876543238', 'Address 4', 1),
(5, 'Deepak', 'Raja', '2004-10-01', 'Male', 'deepak.raja@example.com', '9876543213', 'Address 5', 2),
(6, 'Bhavani', 'Devi', '2004-11-23', 'Female', 'bhavani.devi@example.com', '9876543237', 'Address 6', 3),
(7, 'Arun', 'Kumar', '2003-05-14', 'Male', 'arun.kumar@example.com', '9876543210', 'Address 7', 1),
(8, 'Nirmala', 'Devi', '2004-06-25', 'Female', 'nirmala.devi@example.com', '9876543223', 'Address 8', 2),
(9, 'Ilavarasan', 'V', '2003-02-14', 'Male', 'ilavarasan.v@example.com', '9876543218', 'Address 9', 3),
(10, 'Bala', 'Murugan', '2004-07-22', 'Male', 'bala.murugan@example.com', '9876543211', 'Address 10', 1),
(11, 'Jaya', 'Lakshmi', '2004-03-30', 'Female', 'jaya.lakshmi@example.com', '9876543219', 'Address 11', 2),
(12, 'Karthik', 'Raja', '2003-06-10', 'Male', 'karthik.raja@example.com', '9876543220', 'Address 12', 3),
(13, 'Suresh', 'Kumar', '2003-12-01', 'Male', 'suresh.kumar@example.com', '9876543228', 'Address 13', 1),
(14, 'Ezhil', 'Arasan', '2003-11-15', 'Male', 'ezhil.arasan@example.com', '9876543214', 'Address 14', 2),
(15, 'Fathima', 'Beevi', '2004-12-12', 'Female', 'fathima.beevi@example.com', '9876543215', 'Address 15', 3),
(16, 'Oviya', 'S', '2003-09-09', 'Female', 'oviya.s@example.com', '9876543224', 'Address 16', 1),
(17, 'Prakash', 'Raj', '2004-05-19', 'Male', 'prakash.raj@example.com', '9876543225', 'Address 17', 2),
(18, 'Chitra', 'Lakshmi', '2003-03-09', 'Female', 'chitra.lakshmi@example.com', '9876543212', 'Address 18', 3),
(19, 'Tamizh', 'Selvan', '2004-08-08', 'Male', 'tamizh.selvan@example.com', '9876543229', 'Address 19', 1),
(20, 'Gokul', 'Nath', '2003-04-27', 'Male', 'gokul.nath@example.com', '9876543216', 'Address 20', 2),
(21, 'Uma', 'Maheswari', '2003-04-11', 'Female', 'uma.maheswari@example.com', '9876543230', 'Address 21', 3),
(22, 'Vijay', 'Kumar', '2004-07-27', 'Male', 'vijay.kumar@example.com', '9876543231', 'Address 22', 1),
(23, 'Kavi', 'S', '2003-07-13', 'Male', 'kavi.s@example.com', '9876543226', 'Address 23', 2),
(24, 'John', 'S', '2004-10-14', 'Male', 'john.s@example.com', '9876543233', 'Address 24', 3),
(25, 'kavi', 'Raj', '2003-06-30', 'Male', 'kavi.raj@example.com', '9876543232', 'Address 25', 1),
(26, 'Divya', 'Bharathi', '2004-01-06', 'Female', 'divya.bharathi@example.com', '9876543239', 'Address 26', 2),
(27, 'Eswari', 'M', '2003-08-15', 'Female', 'eswari.m@example.com', '9876543240', 'Address 27', 3),
(28, 'Sharuk', 'Khan', '2004-09-10', 'Male', 'feroz.khan@example.com', '9876543241', 'Address 28', 1),
(29, 'Jay', 'Vijayan', '2004-08-29', 'Male', 'jay.vijayan@example.com', '9876543245', 'Address 29', 2),
(30, 'Lakshman', 'Kumar', '2004-12-17', 'Male', 'lakshman.kumar@example.com', '9876543247', 'Address 30', 3),
(31, 'Ram', 'Kumar', '2004-12-17', 'Male', 'ram.kumar@example.com', '9876543247', 'Address 31', 1);

-- faculty
INSERT INTO Faculty (faculty_id, first_name, last_name, email, phone_number, department_id)
VALUES

(1, 'Senthil', 'Kumar', 'senthil.kumar@example.com', '9876543101', 1),
(2, 'Aruna', 'Devi', 'aruna.devi@example.com', '9876543102', 1),
(3, 'Manoj', 'V', 'manoj.v@example.com', '9876543103', 1),

(4, 'Siva', 'Subramaniam', 'siva.subramaniam@example.com', '9876543104', 2),
(5, 'Mohana', 'Priya', 'mohana.priya@example.com', '9876543105', 2),

(6, 'Vidhya', 'Rani', 'vidhya.rani@example.com', '9876543106', 3),
(7, 'Prabhu', 'R', 'prabhu.r@example.com', '9876543107', 3);

-- fees

INSERT INTO Fees (fee_id, student_id, amount, due_date, status, payment_date)
VALUES
(1, 1, 1500.00, '2024-02-15', 'Pending', NULL),
(2, 2, 2000.00, '2024-03-01', 'Paid', '2024-02-28'),
(3, 3, 1800.00, '2024-01-20', 'Pending', NULL),
(4, 4, 1700.00, '2024-04-29', 'Paid', '2024-04-15'),
(5, 5, 1900.00, '2024-05-01', 'Pending', NULL),
(6, 6, 1600.00, '2024-02-23', 'Paid', '2024-02-22'),
(7, 7, 1550.00, '2024-07-14', 'Pending', NULL),
(8, 8, 1650.00, '2024-06-25', 'Paid', '2024-06-20'),
(9, 9, 1750.00, '2024-03-14', 'Pending', NULL),
(10, 10, 1850.00, '2024-07-22', 'Paid', '2024-07-21'),                                   
(11, 11, 1900.00, '2024-05-30', 'Pending', NULL),
(12, 12, 1700.00, '2024-06-10', 'Paid', '2024-06-08'),
(13, 13, 1550.00, '2024-08-01', 'Pending', NULL),
(14, 14, 1750.00, '2024-11-15', 'Pending', NULL),
(15, 15, 1650.00, '2024-12-12','Paid', '2024-11-10'),
(16, 16, 1800.00, '2024-03-09', 'Paid', '2024-03-08'),
(17, 17, 1900.00, '2024-05-19',  'Paid', '2024-07-21'),
(18, 18, 1600.00, '2024-03-09', 'Paid', '2024-03-07'),
(19, 19, 1500.00, '2024-08-08',  'Paid', '2024-07-21'),
(20, 20, 1700.00, '2024-09-01', 'Paid', '2024-08-30'),
(21, 21, 1850.00, '2024-04-11', 'Pending', NULL),
(22, 22, 2000.00, '2024-06-27', 'Paid', '2024-06-26'),
(23, 23, 1600.00, '2024-02-13', 'Pending', NULL),
(24, 24, 1750.00, '2024-10-14', 'Paid', '2024-10-12'),
(25, 25, 1500.00, '2024-06-30', 'Pending', NULL),
(26, 26, 1800.00, '2024-04-01', 'Pending', NULL),
(27, 27, 1700.00, '2024-08-15', 'Pending', NULL),
(28, 28, 1850.00, '2024-05-10', 'Pending', NULL),
(29, 29, 1550.00, '2024-07-27', 'Pending', NULL),
(30, 30, 1900.00, '2024-12-17', 'Paid', '2024-12-16');

-- book 
INSERT INTO Books (book_id, title, author, publisher, year_of_publication)
VALUES
(1, 'Introduction to Algorithms', 'Thomas H. Cormen', 'MIT Press', 2009),
(2, 'The Art of Computer Programming', 'Donald E. Knuth', 'Addison-Wesley', 1997),
(3, 'Computer Networks', 'Andrew S. Tanenbaum', 'Pearson', 2010),
(4, 'Artificial Intelligence: A Modern Approach', 'Stuart Russell', 'Pearson', 2015),
(5, 'Digital Design', 'M. Morris Mano', 'Pearson', 2013),
(6, 'Operating System Concepts', 'Abraham Silberschatz', 'Wiley', 2018),
(7, 'Data Structures and Algorithms in Java', 'Robert Lafore', 'Sams Publishing', 2002),
(8, 'Database System Concepts', 'Abraham Silberschatz', 'McGraw-Hill', 2011),
(9, 'Principles of Compiler Design', 'Alfred V. Aho', 'Pearson', 2006),
(10, 'Software Engineering', 'Ian Sommerville', 'Addison-Wesley', 2010);


-- library
INSERT INTO Library (library_id, student_id, book_id, issue_date, return_date, status)
VALUES
(1, 1, 1, '2024-07-20', '2024-08-20', 'Issued'),
(2, 2, 2, '2024-07-21', '2024-08-21', 'Returned'),
(3, 3, 3, '2024-07-22', '2024-08-22', 'Issued'),
(4, 4, 4, '2024-07-23', '2024-08-23', 'Issued'),
(5, 5, 5, '2024-07-24', '2024-08-24', 'Issued'),
(6, 6, 6, '2024-07-25', '2024-08-25', 'Returned'),
(7, 7, 7, '2024-07-26', '2024-08-26', 'Issued'),
(8, 8, 8, '2024-07-27', '2024-08-27', 'Returned'),
(9, 9, 9, '2024-07-28', '2024-08-28', 'Issued'),
(10, 10, 10, '2024-07-29', '2024-08-29', 'Issued');

-- gatepass
INSERT INTO Gatepass (gatepass_id, student_id, reason, issue_date, return_date, status)
VALUES
(1, 1, 'Medical Appointment', '2024-07-20', '2024-07-20', 'Approved'),
(2, 2, 'Family Emergency', '2024-07-21', '2024-07-22', 'Approved'),
(3, 3, 'Personal Work', '2024-07-22', '2024-07-22', 'Approved'),
(4, 4, 'Seminar Attendance', '2024-07-23', '2024-07-23', 'Approved'),
(5, 5, 'Project Work', '2024-07-24', '2024-07-24', 'Approved'),
(6, 6, 'Festival Leave', '2024-07-25', '2024-07-27', 'Approved'),
(7, 7, 'Hospital Visit', '2024-07-26', '2024-07-26', 'Approved'),
(8, 8, 'Family Function', '2024-07-27', '2024-07-28', 'Approved'),
(9, 9, 'Vacation', '2024-07-28', '2024-08-02', 'Approved'),
(10, 10, 'Urgent Work', '2024-07-29', '2024-07-29', 'Approved');


SELECT 
    s.student_id, 
    s.first_name, 
    s.last_name, 
    s.department_id, 
    f.fee_id, 
    f.amount, 
    f.due_date, 
    f.status
FROM 
    Fees f
JOIN 
    Students s ON f.student_id = s.student_id
WHERE 
    f.status = 'pending';
    
SELECT d.department_name, COUNT(s.student_id) AS student_count
FROM Departments d
LEFT JOIN Students s ON d.department_id = s.department_id
GROUP BY d.department_name;

SELECT 
    s.student_id, 
    s.first_name, 
    s.last_name, 
    d.department_name
FROM 
    Students s
JOIN 
    Departments d ON s.department_id = d.department_id limit 31;
    
SELECT 
    Students.student_id,
    Students.first_name,
    Students.last_name,
    Library.library_id,
    Library.issue_date,
    Library.return_date,
    Library.status,
    Books.title,
    Books.author,
    Books.publisher,
    Books.year_of_publication
FROM 
    Students
JOIN 
    Library ON Students.student_id = Library.student_id
JOIN 
    Books ON Library.book_id = Books.book_id





    
