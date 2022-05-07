select first_name, last_name from sakila.actor
where first_name='SCARLETT';

select first_name, last_name from sakila.actor
where last_name='Johansson';

select count(rental_id) from sakila.rental
where return_date IS NOT NULL;  

select count(rental_id) from sakila.rental
where rental_date IS NOT NULL; 

select rental_id, date(return_date), date(rental_date), (date(return_date) - date(rental_date)) as diference from sakila.rental
order by diference desc;

select rental_id, date(return_date), date(rental_date), (date(return_date) - date(rental_date)) as diference from sakila.rental
where date(return_date) IS NOT NULL and date(return_date) <> date(rental_date)
order by diference asc;

select title, max(length) as max_duration, min(length) as min_duration from sakila.film;

select avg(length) from sakila.film
where length IS NOT NULL;

select convert(avg(length), time) from sakila.film
where length IS NOT NULL;

select count(film_id) from sakila.film
where convert(length, time) > '00:03:00';

select max(length(title)) from sakila.film_text;
