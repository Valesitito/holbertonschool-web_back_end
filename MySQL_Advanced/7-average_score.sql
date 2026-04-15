-- Defines the ComputeAverageScoreForUser stored procedure,
-- which calculates a student's mean score and persists it
DELIMITER |
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
    UPDATE users
    SET average_score = (
        SELECT AVG(score)
        FROM corrections
        WHERE corrections.user_id = user_id
    )
    WHERE id = user_id;
END;
|
DELIMITER ;
