-- Exercise 1 Obtenir la liste des auteurs dont l'editeur << Harmattan >> n'a publie aucun livre
select a.au_id, a.au_fname, a.au_lname from authors a where a.au_id in (
select ta.au_id from titleauthor ta join titles t on ta.title_id=t.title_id
join publishers p on t.pub_id=p.pub_id where not p.pub_name = "Harmattan"); 

-- Exercise 2 Obtenir la liste des auteurs dont l'editeur <<Eyrolles>> a publie tous les livres
select a.au_id, a.au_fname, a.au_lname
from authors a where not exists (
select t.title_id from titles t 
join titleauthor ta on t.title_id = ta.title_id
join publishers p on t.pub_id = p.pub_id
where ta.au_id = a.au_id and p.pub_name != 'Eyrolles');

-- Exercise 3 Obtenir la liste des noms d'auteurs ayant touche une avance superieure a toutes les avances versees par l'editeur "Harmattan"
select a.au_id, a.au_fname, a.au_lname
from authors a where 
(select sum(t.advance) from titles t where t.title_id in (select title_id from titleauthor where au_id = a.au_id )) >
(select sum(t.advance) from titles t join publishers p on t.pub_id = p.pub_id where p.pub_name = 'Harmattan');

