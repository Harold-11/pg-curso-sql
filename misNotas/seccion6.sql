
SELECT DISTINCT continent from country order by continent asc;


insert into continent (name)
	SELECT DISTINCT
  		continent
	from
  		country
	order by
  		continent asc;
  		
select * from continent;
  		

select * from country;

--Respaldo de la tabla country
select * from country_bk;

--Insertando datos para el respaldo
insert into country_bk
	SELECT 
  		*
	from
  		country;
 
 
 select * from country;
 
alter table country drop CONSTRAINT country_continent_check;


select * from country;



select * from continent;
select a.name from country a;

--select previo para la actualizacion de datos
SELECT
	a.name, a.continent, 
	(select "code" from continent b where b.name = a.continent)
FROM country a;

--actualizando datos
update country a 
set continent = (select "code" from continent b where b.name = a.continent);
 
 select * from country;
 
 
 alter TABLE country 
 alter COLUMN continent type int4
 USING continent::integer;
 
 




-- Tarea con countryLanguage

-- Crear la tabla de language

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS language_code_seq;


-- Table Definition
CREATE TABLE "public"."language" (
    "code" int4 NOT NULL DEFAULT 	nextval('language_code_seq'::regclass),
    "name" text NOT NULL,
    PRIMARY KEY ("code")
);

-- Crear una columna en countrylanguage
ALTER TABLE countrylanguage
ADD COLUMN languagecode varchar(3);


-- Empezar con el select para confirmar lo que vamos a actualizar

-- Actualizar todos los registros

-- Cambiar tipo de dato en countrylanguage - languagecode por int4

-- Crear el forening key y constraints de no nulo el language_code

-- Revisar lo creado
 

--RESOLUCION DE LA TAREA
 ------------------------------
 
 select * from countrylanguage;
 
 select DISTINCT "language" from countrylanguage order by "language" asc;
 
 --Insertar idomas a tabla language
 insert into "language" (name)
  select DISTINCT "language" from countrylanguage order by "language" asc;
 --Verificacion:
 select * from "language";
 
 
 --Filtrar idioma ingles
 select "language" from countrylanguage where "language" = 'English';
 
--
SELECT * from countrylanguage;
select * from "language";
--
 SELECT 
 	a."language", a.languagecode,
 	(SELECT "code" from "language" b where b.name = a."language") 
 from countrylanguage a;

UPDATE countrylanguage a
set languagecode = (SELECT "code" from "language" b where b.name = a."language") ;

select * from countrylanguage;
--Convertir al mismo tipo (int4)

 alter TABLE countrylanguage
 alter COLUMN languagecode type int4
 USING languagecode::integer;

