-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed
SELECT
    Student.StudentId, 
    FirstName, 
    LastName, 
    SUM(Credits) AS TotalCreditsPassed
FROM Student
JOIN Enrolment
    ON Enrolment.StudentId = Student.StudentId
JOIN Course
    ON Course.CourseId = Enrolment.CourseId
WHERE Grade >= 40
GROUP BY 
    Student.StudentId, 
    FirstName, 
    LastName;