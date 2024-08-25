# sql-challenge
![dylan-gillis-KdeqA3aTnBY-unsplash](https://github.com/user-attachments/assets/0b522cd8-adaa-456f-9fa6-1ab3fd8c5416)

Photo by <a href="https://unsplash.com/@dylandgillis?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Dylan Gillis</a> on <a href="https://unsplash.com/photos/people-sitting-on-chair-in-front-of-table-while-holding-pens-during-daytime-KdeqA3aTnBY?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Unsplash</a>
  
<h1>Module 9</h1>

<h2>Background</h2>

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

<h2>Instructions</h2>
This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

<h3>Data Modeling</h3>

Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. 

![Entity Relationship Diagram](https://github.com/user-attachments/assets/b19a0d16-6089-4b6d-9167-fc648809d8c5)


<h3>Data Engineering</h3>

Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

Remember to specify the data types, primary keys, foreign keys, and other constraints.

For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.

Be sure to create the tables in the correct order to handle the foreign keys.

Import each CSV file into its corresponding SQL table.

<h3>Data Analysis</h3>

List the employee number, last name, first name, sex, and salary of each employee.

List the first name, last name, and hire date for the employees who were hired in 1986.

List the manager of each department along with their department number, department name, employee number, last name, and first name.

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

List each employee in the Sales department, including their employee number, last name, and first name.

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

