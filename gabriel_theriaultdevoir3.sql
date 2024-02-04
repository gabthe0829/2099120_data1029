-- Exercise 1 : La liste des paires (auteur, editeur) demeurant dans la meme ville.
select a.au_fname, a.au_lname, a.city, p.pub_id, p.pub_name, p.city from authors a join publishers p on a.city=p.city;
-- Exercise 2 : La liste des paires (auteur, editeur) demeurant dans la meme ville, incluant aussi les auteurs qui ne repondent pas a ce critere.
select a.au_fname, a.au_lname, a.city, p.pub_id, p.pub_name, p.city from authors a left join publishers p on a.city=p.city; 
-- Exercise 3 : La liste des paires (auteur, editeur) demeurant dans la meme ville, incluant aussi les editeurs qui ne repondent pas a ce critere.

-- Exercise 4 : La liste des paires (auteur, editeur) demeurant dans la meme ville, incluant les auteurs et les editeurs qui ne repondent pas a ce critere. 

-- Exercise 5 : Effectif (nombre) d'employes par niveau d'experience.

-- Exercise 6 : Liste des employes par maison d'edition.

-- Exercise 7 : Salaires horaires moyens des employes par maison d'edition

-- Exercise 8 : Effectif (nombre) d'employees de niveau SEINIOR par maison d'edition

