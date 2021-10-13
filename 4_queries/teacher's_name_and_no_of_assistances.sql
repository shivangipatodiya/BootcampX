SELECT DISTINCT teachers.name, cohorts.name, count(assistance_requests.*)
FROM teachers 
     JOIN assistance_requests ON teachers.id = teacher_id
     JOIN students ON student_id = students.id
     JOIN cohorts ON cohorts.id = cohort_id   
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;