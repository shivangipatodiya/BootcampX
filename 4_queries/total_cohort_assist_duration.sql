SELECT cohorts.name AS cohort,
       sum(completed_at-started_at) AS total_duration
FROM students
    JOIN assistance_requests ON assistance_requests.student_id = students.id
    JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;