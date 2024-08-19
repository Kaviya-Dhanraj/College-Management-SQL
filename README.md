Output for the Queries:
i)
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

   ![image](https://github.com/user-attachments/assets/174b1006-7606-43c2-a154-417434ac9a92)

ii)
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

![image](https://github.com/user-attachments/assets/0e50662e-14d8-4b89-a878-6e8a5f8e6a9e)



