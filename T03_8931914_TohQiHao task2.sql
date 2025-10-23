-- TASK 2 A)
SELECT code, category, name, level
FROM Course
WHERE category = 'IT'
  AND code NOT IN (
      SELECT code FROM OfferedCourse
  );

-- TASK 2 B)
SELECT empId, name, dob, trainYears
FROM Trainer
WHERE empId IN (
    SELECT trainer
    FROM OfferedCourse
    GROUP BY trainer
    HAVING COUNT(*) > 2
)
ORDER BY trainYears DESC;

-- TASK 2 C)
SELECT DISTINCT Course.code, Course.category, Course.name, Course.level
FROM Course
JOIN OfferedCourse ON Course.code = OfferedCourse.code
WHERE MONTH(OfferedCourse.startDate) IN (4, 5);

-- TASK 2 D)
INSERT INTO Trainer VALUES ('T501', 'Super Tee', '1990-06-12', 5);
INSERT INTO Qualification VALUES ('T501', 'Business');
INSERT INTO Qualification VALUES ('T501', 'MBA');

-- Task 2 E)
UPDATE Course
SET level = level + 1
WHERE category = 'dessert';

