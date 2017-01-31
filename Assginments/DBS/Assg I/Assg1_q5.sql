select e1.employee_name from employee as e1,employee as e2 where e1.employee_name > all e2.employee_name;

select e1.employee_name from employee as e1,employee as e2 where e1.employee_name > some e2.employee_name;

select employee_name from employee not exsists in (select employee_name from works);

with company_salary(company,salary) as (select company_name,sum(salary) group by company_name) select max(salary) from company_salary;