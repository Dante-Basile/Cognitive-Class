--Retrieve all employees whose address is in Elgin, IL
;
select F_NAME, L_NAME from EMPLOYEES
where ADDRESS like '%Elgin,IL'
;
--Retrieve all employees who were born during the 1970s.
;
select F_NAME, L_NAME from EMPLOYEES
where B_DATE like '197%'
;
--Retrieve all employees in department 5 whose salary is between 60000 and 70000.
;
select * from EMPLOYEES
where DEP_ID=5 and SALARY between 60000 and 70000
;
--Retrieve a list of employees ordered by department, within each department, ordered alphabetically by first name (in descending order).
;
select D.DEP_NAME, E.F_NAME, E.L_NAME from EMPLOYEES as E, DEPARTMENTS AS D
where D.DEPT_ID_DEP=E.DEP_ID
order by D.DEP_NAME, E.F_NAME desc
;
--Retrieve the department number, the number of employees in the department, and their average salary.
;
select DEP_ID, count(DEP_ID) as DEP_COUNT, avg(SALARY) as AVG_SALARY  from EMPLOYEES
group by DEP_ID
;