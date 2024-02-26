-- Exercise 2 #1
select u.full_name as 'nom complet', r.name as 'Role'from user u join role r on u.role_id=r.id;

-- Exercise 2 #2
select p.name as 'designation', o.quantity as 'quantite' from product p join OrderLine o on p.id=o.product_id 
union
select p.name, o.quantity from product p, OrderLine o join invoice i on o.order_id=i.order_id where i.customer_id = 1;

