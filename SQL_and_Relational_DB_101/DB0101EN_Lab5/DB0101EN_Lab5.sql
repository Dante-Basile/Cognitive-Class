--Join the EMPLOYEES and JOB_HISTORY tables and select the names of all employees who work for the department number 5.
;
select E.F_NAME, E.L_NAME 
from EMPLOYEES as E inner join JOB_HISTORY as J
on E.EMP_ID = J.EMPL_ID
where E.DEP_ID = 5
;
--Join the EMPLOYEES and DEPARTMENT tables and select the Employee id, First name, Department id and Department name of all employees who were born before 1980.
;
select E.EMP_ID, E.F_NAME, E.DEP_ID, D.DEP_NAME
from EMPLOYEES as E left join DEPARTMENTS as D
on E.DEP_ID = D.DEPT_ID_DEP and year(E.B_DATE) < 1980
;
--Join the EMPLOYEES and DEPARTMENT tables and select the Employee id, First name, Department id and Department name of all male employees.
;
select E.EMP_ID, E.F_NAME, E.DEP_ID, D.DEP_NAME
from EMPLOYEES as E full join DEPARTMENTS as D --full join puts rows with no vacancies at top?
on E.DEP_ID = D.DEPT_ID_DEP and E.SEX = 'M'
;