-- DATA ANALYSIS 

-- 1.) List the employee number, last name, first name, sex, and salary of each employee.

--SELECT * FROM employees;

--SELECT emp_no, last_name, first_name, sex
--FROM employees;

SELECT 
	e.emp_no Employee_Number, e.last_name, e.first_name, e.sex, s.salary
FROM 
	employees as e
INNER JOIN 
	salaries as s ON
	s.emp_no = e.emp_no;


-- 2.) List the first name, last name, and hire date for the employees who were hired in 1986.

--SELECT * FROM employees;

SELECT 
	first_name, last_name, hire_date
FROM 
	employees
WHERE 
	TO_CHAR(hire_date, 'YYYY') = '1986';


-- 3.) List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT 
    d.dept_no Department_Number, d.dept_name Department_Name, dm.emp_no Employee_Number, e.last_name, e.first_name
FROM 
    departments d
INNER JOIN 
    dept_manager dm ON d.dept_no = dm.dept_no
INNER JOIN 
    employees e ON dm.emp_no = e.emp_no;


-- 4.) List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT 
    dm.emp_no Employee_Number, e.last_name, e.first_name, d.dept_no Department_Number, d.dept_name Department_Name
FROM 
    departments d
INNER JOIN 
    dept_manager dm ON d.dept_no = dm.dept_no
INNER JOIN 
    employees e ON dm.emp_no = e.emp_no;

-- 5.) List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT 
    first_name, last_name, sex Gender
FROM 
    employees
WHERE 
	first_name = 'Hercules'
AND 
	last_name LIKE 'B%'; 
    

-- 6.) List each employee in the Sales department, including their employee number, last name, and first name.

SELECT 
    e.emp_no AS Employee_Number, e.last_name, e.first_name
FROM 
    employees e
INNER JOIN 
    dept_emp de ON e.emp_no = de.emp_no
INNER JOIN 
    departments d ON de.dept_no = d.dept_no
WHERE 
    d.dept_name = 'Sales';


-- 7.) List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT 
    e.emp_no AS Employee_Number, e.last_name, e.first_name, d.dept_name AS Department_Name
FROM 
    employees e
INNER JOIN 
    dept_emp de ON e.emp_no = de.emp_no
INNER JOIN 
    departments d ON de.dept_no = d.dept_no
WHERE 
    d.dept_name = 'Sales' 
    OR d.dept_name = 'Development';


-- 8.) List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT 
	last_name, COUNT(last_name) AS "Count of Last Name"
FROM 
	employees
GROUP BY 
	last_name
ORDER BY 
	"Count of Last Name" DESC;
	