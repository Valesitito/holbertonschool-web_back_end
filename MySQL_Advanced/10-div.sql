-- Defines the SafeDiv function used to divide a pair of integers,
-- yielding 0 whenever the divisor happens to be zero.
DELIMITER |
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    IF b = 0 THEN
        RETURN 0;
    END IF;
    RETURN a / b;
END;
|
DELIMITER ;
