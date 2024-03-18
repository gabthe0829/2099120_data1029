-- Exercise 1
select concat(e.fname, " " , e.lname), p.pub_name, max(job_lvl) from employees e join publishers p on e.pub_id=p.pub_id group by p.pub_id;

-- Exercise 2
select concat(fname, " " , lname), salary from employees where salary > (select salary from employees where concat(fname, " ", lname) = 'Norbert Zongo');