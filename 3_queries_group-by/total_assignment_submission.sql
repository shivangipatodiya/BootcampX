SELECT cohorts.name, count(assignment_submissions.*) AS total_submissions
FROM students
  JOIN cohorts ON students.cohort_id = cohorts.id
  JOIN assignment_submissions ON student_id = students.id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;