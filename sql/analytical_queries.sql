Query1:

SELECT name, salary FROM employees
ORDER BY salary DESC LIMIT 3;

Query2:

SELECT d.name, COUNT(e.id) AS employee_count FROM departments d
JOIN employees e ON d.id = e.department_id
GROUP BY d.name
HAVING COUNT(e.id) > 2;

Query 3:

SELECT e.name AS employee_name, d.name AS department_name, p.project_name FROM employees e
JOIN departments d ON e.department_id = d.id
JOIN projects p ON p.department_id = d.id;