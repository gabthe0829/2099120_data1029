-- Exercise 1
select title, price from titles where title like "%computer%";

-- Exercise 2
select title, price from titles where title like 'computer%';

-- Exercise 3
select title, price from titles where title like 'su%' or title like 'bu%';