
ALTER TABLE country add PRIMARY KEY(code);

select * from country where code = 'NLD';

select *from country ;

select * from country where code = 'NLD' and code2= 'NA'

delete from country where code = 'NLD' and code2= 'NA'

select * from country;

alter TABLE country add check(
	surfacearea >= 0
);


----
alter TABLE country add check (
	(continent = 'Asia'::text)or 
	(continent = 'South America'::text)or 
	(continent = 'North America'::text)or 
	(continent = 'Oceania'::text)or 
	(continent = 'Antarctica'::text)or 
	(continent = 'Africa'::text)or 
	(continent = 'Europe'::text)or 
	(continent= 'Central America'::text)
);

select * from country where code = 'CRI';
select continent
from users
update 
select * from country;

update country
set continent = 'Central America'
where code2 = 'CR'

alter table country
	drop CONSTRAINT "country_continent_check1"
	
select name, SUBSTRING(name,0,5), POSITION ('e' in name) 
from country 


  
  
 select * from country where continent = 'Africa';
 
 select name 
 from country ;
create unique index "unique_country_name" on country (
	name
);


create index "country_continet" on country (
	continent
);





-- 1. Crear una llave primaria en city (id)

select * from city;

alter table city ADD PRIMARY KEY (id);


-- 2. Crear un check en population, para que no soporte negativos

select population from city;
alter table city add CHECK (
	population >= 0
);


-- 3. Crear una llave primaria compuesta en "countrylanguage"
-- los campos a usar como llave compuesta son countrycode y language

select * from countrylanguage;
alter table countrylanguage add PRIMARY KEY(countrycode, language);



-- 4. Crear check en percentage, 
-- Para que no permita negativos ni números superiores a 100

alter table countrylanguage add check(
	(percentage >=0) AND (percentage <= 100)
);

CREATE UNIQUE INDEX "unique_name_countrycode_district" on city(
	name,countrycode, district
)

select
  *
from
  city
where
  name = 'Jinzhou'
  and countrycode = 'CHN'
  and district = 'Liaoning';

CREATE INDEX "Index_district" on city (
	district
);

drop index "city_district" ;

ALTER TABLE city
	add CONSTRAINT fk_country_code
	FOREIGN KEY (countrycode)
	REFERENCES country(code);	


INSERT INTO country
		values('AFG', 'Afghanistan', 'Asia', 'Southern Asia', 652860, 1919, 40000000, 62, 69000000, NULL, 'Afghanistan', 'Totalitarian', NULL, NULL, 'AF');

select * from city; --countrycode
select * from country; --code
SELECT * from countrylanguage; --countrycode

ALTER TABLE countrylanguage
	add CONSTRAINT fk_country_lenguage_code
	FOREIGN KEY (countrycode)
	REFERENCES country(code);	



delete from country where code = 'AFG'; 

select * from country where code = 'AFG';

select * from city where countrycode = 'AFG';

select * from countrylanguage where countrycode = 'AFG';




  