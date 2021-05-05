


DELIMITER $$

CREATE TRIGGER Game_Score_Before_Insert
	BEFORE INSERT ON GameScore
	FOR EACH ROW 
BEGIN 
	IF  NEW.CriticScore < 5 THEN 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'ERROR:SCORE IS BELOW 5';
	END IF;

END$$ 

DELIMITER ;

# This trigger is to restrict inserting games with a critic score that is less than 5. This score is too low to be accepted.

INSERT INTO GameScore 
VALUES (76, 'Testgame', 'thomaspublishing', 4.7);