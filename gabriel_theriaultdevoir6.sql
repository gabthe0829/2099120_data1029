-- Exercise 1
select concat(e.fname, " " , e.lname), p.pub_name, max(job_lvl) from employees e join publishers p on e.pub_id=p.pub_id group by p.pub_id;

-- Exercise 2
select concat(fname, " " , lname), salary from employees where salary > (select salary from employees where concat(fname, " ", lname) = 'Norbert Zongo');

-- Exercise 3
select concat(e.fname, " ", e.lname) , p.pub_name, p.country from employees e join publishers p on e.pub_id=p.pub_id where p.country = 'Canada';   

-- Exercise 4
select concat(fname, " ", lname), job_lvl from employees where not job_lvl = 'SEINIOR' or 'MANAGER';

-- Exercise 5
select concat(fname, " ", lname), salary from employees where salary > (select avg(e.salary) from employees e join publishers p on e.pub_id=p.pub_id); 