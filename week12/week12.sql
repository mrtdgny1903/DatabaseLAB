#For each employee, get the employee last name and the last name of their department manager.
use company;
select e.last_name,m.last_name
from employee e, employee m,department d
where  d.mgrssn = m.ssn and e.dno = d.dnumber;

#Salaries of all employees have been incremented by $1000 plus 3% of their previous salaries.
select * from employee;
update employee set salary = 1.03 * salary + 1000;

#Get the full names of employees who are working on more than one project.
select first_name,last_name
from employee
 where ssn in
 (select w1.essn
 from works_on w1
 group by essn
 having count(distinct pno)>1);
 
#Compute the min,max,avg salaries for each gender

select min(salary),max(salary),avg(salary),sex
from employee
group by sex;