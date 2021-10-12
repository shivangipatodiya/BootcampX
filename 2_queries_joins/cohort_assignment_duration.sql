SELECT sum(duration)
FROM students
  INNER JOIN cohorts ON students.cohort_id = cohorts.id
  JOIN assignment_submissions ON students.id = student_id
WHERE cohorts.name = 'FEB12';

