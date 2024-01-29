-- Exercise 1
select title, price from titles where title like "%computer%";

-- Exercise 2
select title, price from titles where title like 'computer%';

-- Exercise 3
select title, price from titles where title like 'su%' or title like 'bu%';

-- Exercise 4
select title, price from titles where title not like 'su%' and title not like 'bu%';

-- Exercise 5
select title, price from titles where title not like 's%' and title not like 'b%' and title like '_o%';