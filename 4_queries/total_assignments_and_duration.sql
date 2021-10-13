SELECT assignments.day, count(assignments.*) AS no_of_assignments, sum(assignments.duration)
FROM assignments 
GROUP BY assignments.day
ORDER BY day;