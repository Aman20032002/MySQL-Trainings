-- JOINS
-- INNER JOIN

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics
INNER JOIN employee_salary
  ON employee_demographics.employee_id = employee_salary.employee_id;
  
  -- ALIASING
  
  SELECT * 
  FROM employee_demographics AS dem
  INNER JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id;
    
    SELECT employee_id, age, occupation
    FROM employee_demographics AS dem
    INNER JOIN employee_salary AS sal
      ON dem.employee_id = sal.employee_id;
      
	SELECT dem.employee_id, age, occupation
    FROM employee_demographics AS dem
    INNER JOIN employee_salary AS sal
      ON dem.employee_id = sal.employee_id;
      
      
      -- OUTER JOIN (LEFT AND RIGHT JOIN)
      
      
      SELECT *
      FROM employee_demographics AS dem
      LEFT JOIN employee_salary AS sal
        ON dem.employee_id = sal.employee_id;
      
	SELECT *
    FROM employee_demographics AS dem
    RIGHT JOIN employee_salary AS sal
      ON dem.employee_id = sal.employee_id;
      
	SELECT dem.employee_id, age, occupation
    FROM employee_demographics AS dem
	RIGHT JOIN employee_salary AS sal
      ON dem.employee_id = sal.employee_id;
      
      -- SELF JOIN
      
      SELECT *
      FROM employee_salary
      JOIN employee_salary
        ON employee_id = employee_id;
        
      
      SELECT *
      FROM employee_salary AS emp1
      JOIN employee_salary AS emp2
        ON emp1.employee_id = emp2.employee_id;
        
        
	  SELECT *
      FROM employee_salary AS emp1
      JOIN employee_salary AS emp2
        ON emp1.employee_id + 1 = emp2.employee_id;
        
        SELECT emp1.employee_id AS emp_santa,
        emp1.first_name AS first_name_santa,
        emp1.last_name AS last_name_santa,
        emp2.employee_id AS emp_santa,
        emp2.first_name AS first_name_santa,
        emp2.last_name AS last_name_santa
        FROM employee_salary AS emp1
        JOIN employee_salary AS emp2
         ON emp1.employee_id + 1 = emp2.employee_id;
         
         
		SELECT emp1.employee_id AS emp_santa,
        emp1.first_name AS first_name_santa,
        emp1.last_name AS last_name_santa,
        emp2.employee_id AS emp_name,
        emp2.first_name AS first_name_emp,
        emp2.last_name AS last_name_emp
        FROM employee_salary AS emp1
        JOIN employee_salary AS emp2
         ON emp1.employee_id + 1 = emp2.employee_id;
        
        -- JOINING MULTIPLE TABLE
        
	  SELECT *
      FROM employee_demographics AS dem
      JOIN employee_salary AS sal
        ON dem.employee_id = sal.employee_id
        JOIN parks_departments AS pd
         ON sal.dept_id = pd.department_id
        ;
        
      
      