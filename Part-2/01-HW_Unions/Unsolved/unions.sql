ALTER TABLE actor
ADD record_type VARCHAR;

UPDATE actor
SET record_type = 'Actor';

ALTER TABLE staff
ADD record_type VARCHAR;

UPDATE staff
SET record_type = 'Staff';

ALTER TABLE customer
ADD record_type VARCHAR;

UPDATE customer
SET record_type = 'Customer';

create view all_parties AS
select first_name, last_name, record_type from actor
UNION
select first_name, last_name, record_type from staff
UNION
select first_name, last_name, record_type from customer;

select * from all_parties