-- In a SQL db, you have two tables, an employees table and a departments table. Employees belong to only one department. Write a SQL query that, given a department name, finds all the employees in that department.

SELECT
  employees.*
FROM
  employees e
JOIN
  departments d ON e.department_id = d.id
WHERE
  d.name = ?



--   (from InstaCart) Write the following queries in SQL and in Rails:

-- a. "count all users",
SELECT
 count(*)
FROM 
users;

-- another solution 
User.count

-- b. "count all active users (you define what active means)",
-- c. "count all users who visited the site within a certain time period".
