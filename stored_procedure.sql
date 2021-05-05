
-- DELIMITER $$ 

-- CREATE PROCEDURE  getPublisherSales(inReleaseYear INT)

-- BEGIN
-- 	  SET @ReleaseYear := inReleaseYear;
	
-- 	  SELECT 
-- 	  Publisher,
-- 	  SUM(NASales) 
-- FROM GameSales
-- GROUP BY Publisher
-- ORDER BY SUM(NASales) DESC;

-- END

-- DELIMITER ;

-- CALL getPublisherSales();


DELIMITER $$ 

DROP PROCEDURE IF EXISTS getPublisherSales$$

CREATE PROCEDURE  getPublisherSales(inReleaseYear INT)

BEGIN
	SET @ReleaseYear := inReleaseYear;
	
	SELECT 
	Publisher,
	SUM(NASales) 
FROM GameSales
WHERE ReleaseYear = @ReleaseYear
GROUP BY Publisher
ORDER BY SUM(NASales) DESC;

END

DELIMITER ;

CALL getPublisherSales(2015);
