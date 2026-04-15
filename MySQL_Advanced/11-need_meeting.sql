-- Defines the need_meeting view, which returns every student whose
-- grade is below 80 and who either never met or hasn't met in the past month.

-- Build the view by filtering students using grade and meeting-date conditions
CREATE VIEW need_meeting AS
SELECT name
FROM students
WHERE score < 80
AND (last_meeting IS NULL OR last_meeting < ADDDATE(CURDATE(), INTERVAL -1 MONTH));
