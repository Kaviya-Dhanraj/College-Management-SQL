Output for the Queries:
i)
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

   ![image](https://github.com/user-attachments/assets/a7d5a0a1-5391-4a73-a18f-ed865863ce8b)


ii)
SELECT d.department_name, COUNT(s.student_id) AS student_count
FROM Departments d
LEFT JOIN Students s ON d.department_id = s.department_id
GROUP BY d.department_name;

![image](https://github.com/user-attachments/assets/854f77bb-399a-43dc-b697-b4592fd1ac41)

iii)
SELECT 
    s.student_id, 
    s.first_name, 
    s.last_name, 
    d.department_name
FROM 
    Students s
JOIN 
    Departments d ON s.department_id = d.department_id limit 31;
![image](https://github.com/user-attachments/assets/02c8923c-1f71-4c4c-b4b5-290258e319ea)
![image](https://github.com/user-attachments/assets/803ad249-4d32-46e0-a067-ec58f20bf9fc)

iv)
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

![image](https://github.com/user-attachments/assets/2fc76325-bd73-45c1-979f-03374760bd89)





