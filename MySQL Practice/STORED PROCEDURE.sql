-- Stored Procedures

SELECT * 
FROM employee_salary
WHERE salary >= 50000;


CREATE PROCEDURE large_salaries()
SELECT * 
FROM employee_salary
WHERE salary >= 50000;


CALL large_salaries();


CREATE PROCEDURE large_salaries2()
SELECT * 
FROM employee_salary
WHERE salary >= 50000;
SELECT *
FROM employee_salary
WHERE salary>= 10000;


DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
    SELECT * 
	FROM employee_salary
    WHERE salary >= 50000;
    SELECT *
    FROM employee_salary
	WHERE salary>= 10000;
END $$
DELIMITER ;


-- PARAMETER


DELIMITER $$
CREATE PROCEDURE large_salaries4(employee INT)
BEGIN
    SELECT salary
	FROM employee_salary
    WHERE employee_id = employee
   ;
END $$
DELIMITER ;

CALL large_salaries4(1);















