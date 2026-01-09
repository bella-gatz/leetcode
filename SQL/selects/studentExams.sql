-- grouping & aggregates
-- cross joins (combinations)

SELECT s.student_id, s.student_name, s2.subject_name, IFNULL(COUNT(e.subject_name),0) as attended_exams
FROM Students s
CROSS JOIN Subjects s2 -- want all the combinations of 
LEFT JOIN Examinations e ON s.student_id = e.student_id -- keep all students (even if haven't taken exam)
    AND e.subject_name = s2.subject_name -- only keep matching subjects
GROUP BY e.subject_name, s.student_id, s2.subject_name
ORDER BY s.student_id, s2.subject_name