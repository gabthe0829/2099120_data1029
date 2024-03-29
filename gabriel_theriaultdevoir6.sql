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

-- Exercise 6
select concat(fname, " ", lname), min(salary), job_lvl from employees where job_lvl = 'STAGIAIRE'
union
select concat(fname, " ", lname), min(salary), job_lvl from employees where job_lvl = 'JUNIOR'
union 
select concat(fname, " ", lname), min(salary), job_lvl from employees where job_lvl = 'INTERMEDIARE'
union
select concat(fname, " ", lname), min(salary), job_lvl from employees where job_lvl = 'SEINIOR'
union
select concat(fname, " ", lname), min(salary), job_lvl from employees where job_lvl = 'MANAGER'; 

-- Exercise 7
select t.title, t.type, sum(s.qty) from titles t join sales s on t.title_id = s.title_id
group by t.title, t.type order by sum(s.qty) desc;

-- Exercise 8
select t.title, t.price, sum(s.qty) from titles t join sales s on t.title_id = s.title_id where s.stor_id = (select st.stor_id from stores st join sales s on st.stor_id=s.stor_id);

-- Exercise 9
select concat(a.au_fname, " ", a.au_lname) , count(*) from titleauthor ta join titles t on ta.title_id = t.title_id join sales s on t.title_id = s.title_id
join authors a on ta.au_id = a.au_id group by a.au_id limit 5;

-- Exercise 10
select p.pub_name, avg(t.price) from titles t join publishers p on t.pub_id=p.pub_id group by p.pub_name;

-- Exercise 11
select concat (a.au_fname, " ", a.au_fname), count(ta.title_id) from authors a join titleauthor ta on a.au_id=ta.au_id group by a.au_id order by count(ta.title_id) desc limit 3;