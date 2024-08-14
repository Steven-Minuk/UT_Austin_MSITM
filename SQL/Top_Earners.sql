/*
Top Earners
	We define an employee's total earnings to be their monthly salary*months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table.
    Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings.
    Then print these values as 2 space-separated integers.
*/

USE UTAustin_MSITM;
# Answer
Select max(months*salary), count(*) from Employee where months*salary = (Select max(months*salary) from Employee);

/*
Correct Output:
108064 7
*/