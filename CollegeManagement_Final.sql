-- drop database college_9;
CREATE DATABASE college_9;
USE college_9;

-- Departments
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
);

-- Hostels
CREATE TABLE Hostels (
    hostel_id INT PRIMARY KEY AUTO_INCREMENT,
    hostel_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    capacity INT NOT NULL
);

-- Courses
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    department_id INT,
    credits INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Students
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15) UNIQUE,
    address TEXT,
    department_id INT,
    hostel_id INT,
    course_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (hostel_id) REFERENCES Hostels(hostel_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Faculty
CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15) UNIQUE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Fees
CREATE TABLE Fees (
    fee_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    due_date DATE,
    status VARCHAR(20),
    payment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

-- Books
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100),
    publisher VARCHAR(100),
    year_of_publication YEAR
);

-- Library
CREATE TABLE Library (
    library_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    book_id INT,
    issue_date DATE,
    return_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Gatepass
CREATE TABLE Gatepass (
    gatepass_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    reason TEXT,
    issue_date DATE,
    return_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

-- Rooms
CREATE TABLE Rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    hostel_id INT,
    room_number VARCHAR(10) NOT NULL,
    capacity INT,
    current_occupants INT,
    FOREIGN KEY (hostel_id) REFERENCES Hostels(hostel_id)
);

-- Driver
CREATE TABLE Driver (
    driver_id INT PRIMARY KEY AUTO_INCREMENT,
    driver_name VARCHAR(100) NOT NULL,
    license_number VARCHAR(50),
    contact_number VARCHAR(15),
    experience_years INT
);

-- Transport
CREATE TABLE Transport (
    transport_id INT PRIMARY KEY AUTO_INCREMENT,
    vehicle_type VARCHAR(50),
    vehicle_number VARCHAR(50) UNIQUE,
    driver_id INT,
    capacity INT,
    route_name VARCHAR(255),
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id)
);

-- hostel
INSERT INTO Hostels (hostel_id, hostel_name, location, capacity) VALUES
(1, 'Boys Hostel A', 'North Campus', 100),
(2, 'Girls Hostel A', 'South Campus', 120),
(3, 'Boys Hostel B', 'West Campus', 80),
(4, 'Girls Hostel B', 'East Campus', 100),
(5, 'Boys Hostel C', 'Central Campus', 150),
(6, 'Girls Hostel C', 'North Campus', 110),
(7, 'Boys Hostel D', 'South Campus', 90),
(8, 'Girls Hostel D', 'West Campus', 95),
(9, 'Boys Hostel E', 'East Campus', 85),
(10, 'Girls Hostel E', 'Central Campus', 130);

-- department
INSERT INTO Departments (department_id, department_name)
VALUES
(1, 'CSE'),  
(2, 'IT'),   
(3, 'AI&DS');

-- courses
INSERT INTO Courses (course_id, course_name, department_id, credits) VALUES
(1, 'Computer Science Engineering', 1, 4),
(2, 'Artificial Intelligence and Data Science', 1, 3),
(3, 'Information Technology', 1, 4),
(4, 'Data Structures and Algorithms', 1, 3),
(5, 'Machine Learning', 1, 3),
(6, 'Database Management Systems', 1, 4),
(7, 'Operating Systems', 1, 3),
(8, 'Web Development', 1, 3),
(9, 'Network Security', 1, 4),
(10, 'Cloud Computing', 1, 4);

-- student
INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, email, phone_number, address, department_id, hostel_id, course_id)
VALUES
(1, 'Mohan', 'Das', '2003-01-15', 'Male', 'mohan.das@example.com', '9876543222', 'Address 1', 1, 1, 1),
(2, 'Lavanya', 'S', '2004-11-01', 'Female', 'lavanya.s@example.com', '9876543221', 'Address 2', 2, 1, 1),
(3, 'Radha', 'Krishnan', '2004-01-20', 'Female', 'radha.krishnan@example.com', '9876543227', 'Address 3', 3, 2, 2),
(4, 'Charan', 'R', '2003-07-29', 'Male', 'charan.r@example.com', '9876543238', 'Address 4', 1, 2, 2),
(5, 'Deepak', 'Raja', '2004-10-01', 'Male', 'deepak.raja@example.com', '9876543213', 'Address 5', 2, 3, 3),
(6, 'Bhavani', 'Devi', '2004-11-23', 'Female', 'bhavani.devi@example.com', '9876543237', 'Address 6', 3, 3, 3),
(7, 'Arun', 'Kumar', '2003-05-14', 'Male', 'arun.kumar@example.com', '9876543210', 'Address 7', 1, 1, 1),
(8, 'Nirmala', 'Devi', '2004-06-25', 'Female', 'nirmala.devi@example.com', '9876543223', 'Address 8', 2, 1, 1),
(9, 'Ilavarasan', 'V', '2003-02-14', 'Male', 'ilavarasan.v@example.com', '9876543218', 'Address 9', 3, 2, 2),
(10, 'Bala', 'Murugan', '2004-07-22', 'Male', 'bala.murugan@example.com', '9876543211', 'Address 10', 1, 2, 2);

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
(10, 10, 1850.00, '2024-07-22', 'Paid', '2024-07-21');                                   


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




-- rooms
INSERT INTO Rooms (room_id, hostel_id, room_number, capacity, current_occupants) VALUES
(1, 1, '101', 4, 4),
(2, 1, '102', 4, 3),
(3, 2, '201', 4, 4),
(4, 2, '202', 4, 2),
(5, 3, '301', 4, 4),
(6, 3, '302', 4, 4),
(7, 4, '401', 4, 3),
(8, 4, '402', 4, 2),
(9, 5, '501', 4, 4),
(10, 5, '502', 4, 4);


-- driver
INSERT INTO Driver (driver_id, driver_name, license_number, contact_number, experience_years) VALUES
(1, 'Murugan', 'TN-12345-67890', '9876543210', 10),
(2, 'Kannan', 'TN-23456-78901', '8765432109', 8),
(3, 'Venkatesan', 'TN-34567-89012', '7654321098', 12),
(4, 'Raja', 'TN-45678-90123', '6543210987', 15),
(5, 'Marimuthu', 'TN-56789-01234', '5432109876', 7),
(6, 'Kumarasamy', 'TN-67890-12345', '4321098765', 9),
(7, 'Perumal', 'TN-78901-23456', '3210987654', 11),
(8, 'Manickam', 'TN-89012-34567', '2109876543', 13),
(9, 'Subramanian', 'TN-90123-45678', '1098765432', 14),
(10, 'Aravind', 'TN-01234-56789', '0987654321', 6);

-- transport
INSERT INTO Transport (transport_id, vehicle_type, vehicle_number, driver_id, capacity, route_name) VALUES
(1, 'Bus', 'TN01AB1234', 1, 50, 'Sankari - Tiruchengode '),
(2, 'Bus', 'TN02CD5678', 2, 50, 'Sankari - Erode'),
(3, 'Van', 'TN03EF9101', 3, 15, 'Sankari - perundurai'),
(4, 'Bus', 'TN04GH2345', 4, 50, 'Sankari -  Rasipuram'),
(5, 'Bus', 'TN05IJ6789', 5, 50, 'Sankari - Bhavani'),
(6, 'Van', 'TN06KL1011', 6, 15, 'Sankari -  Komarapalayam'),
(7, 'Bus', 'TN07MN1213', 7, 50, 'Sankari -  Pallipalayam'),
(8, 'Bus', 'TN08OP1415', 8, 50, 'Sankari -  Anthiyur'),
(9, 'Van', 'TN09QR1617', 9, 15, 'Sankari - Kodumudi'),
(10, 'Bus', 'TN10ST1819', 10, 50, 'Sankari - Namakkal');


SELECT 
    Students.student_id,
    Students.first_name,
    Students.last_name,
    Students.email,
    Departments.department_name,
    Hostels.hostel_name,
    Courses.course_name,
    Fees.amount AS fee_amount,
    Fees.status AS fee_status,
    Books.title AS book_title,
    Library.issue_date AS book_issue_date,
    Library.return_date AS book_return_date,
    Library.status AS book_status,
    Gatepass.reason AS gatepass_reason,
    Gatepass.issue_date AS gatepass_issue_date,
    Gatepass.return_date AS gatepass_return_date,
    Gatepass.status AS gatepass_status
FROM 
    Students
LEFT JOIN Departments ON Students.department_id = Departments.department_id
LEFT JOIN Hostels ON Students.hostel_id = Hostels.hostel_id
LEFT JOIN Courses ON Students.course_id = Courses.course_id
LEFT JOIN Fees ON Students.student_id = Fees.student_id
LEFT JOIN Library ON Students.student_id = Library.student_id
LEFT JOIN Books ON Library.book_id = Books.book_id
LEFT JOIN Gatepass ON Students.student_id = Gatepass.student_id
ORDER BY Students.student_id;

SELECT 
   Transport.transport_id AS TransportNumber,
   Transport.vehicle_type AS VehicleType,
   Transport.route_name AS Route,
   Driver.driver_name AS DriverName
FROM
   Transport
JOIN
   Driver
ON 
   Transport.driver_id = Driver.driver_id
WHERE 
   Transport.capacity=50;

