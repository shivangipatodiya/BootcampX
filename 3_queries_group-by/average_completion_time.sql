SELECT students.name, AVG(duration)
FROM students
  JOIN assignment_submissions ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY AVG(duration) DESC;