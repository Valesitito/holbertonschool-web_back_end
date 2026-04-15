-- Defines a trigger that clears the valid_email field exclusively when the email value is modified
DELIMITER |
CREATE TRIGGER reset_email_validation BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email != NEW.email THEN
        SET NEW.valid_email = 0;
    END IF;
END;
|
DELIMITER ;
