-- Exercise 2 #1
select u.full_name as 'nom complet', r.name as 'Role'from user u join role r on u.role_id=r.id;