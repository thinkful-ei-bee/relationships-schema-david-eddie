  -- Assignment Questions
  -- 1
  select count(*) 
  from employee e
  join department d
  on e.department = d.id
  where d.dept_name = 'Sales';
  
 --2 
 select emp_name 
 from employee e
 join employee_project ep
 on ep.emp_id = e.id
 join project p
 on p.id = ep.project_id
 where p.project_name = 'Plan christmas party';
 
 --3
select emp_name 
 from employee e
 join department d
 on e.department = d.id
 join employee_project ep
 on ep.emp_id = e.id
 join project p
 on p.id = ep.project_id
 where d.dept_name = 'Warehouse' and p.project_name = 'Watch paint dry';
 
 --4
select *
from project p
join employee_project ep
on p.id = ep.project_id
join employee e
on ep.emp_id = e.id
join department d
on e.department = d.id
where d.dept_name = 'Sales';

--5
select e.emp_name
from employee e
join department d
 on e.department = d.id
join employee_project ep
 on ep.emp_id = e.id
join project p
 on p.id = ep.project_id
where p.project_name = 'Watch paint dry' and d.manager = e.id;