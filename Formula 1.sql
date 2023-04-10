create table Engine(
	id int primary key,
	name varchar(50)
);
insert into Engine values (1,'Red Bull RBPTH001');
insert into Engine values (2,'Ferrari 066/7');
insert into Engine values (3,'Mercedes-AMG F1 M13');
insert into Engine values (4,'Renault E-Tech RE22');


create table Teams(
	id int primary key,
	team_name varchar(50),
	engine int foreign key references Engine(id),
	team_principal varchar(50),
);
insert into Teams values (1, 'Oracle Red Bull Racing',1,'	Christian Horner');
insert into Teams values(2,'Scuderia Ferrari', 2, '	Mattia Binotto');
insert into Teams values(3,'Mercedes-AMG Petronas F1 Team',3, 'Toto Wolff');
insert into Teams values(4,'BWT Alpine F1 Team',4,'Otmar Szafnauer');
insert into Teams values(5,'McLaren F1 Team',3,'Andreas Seidl');
insert into Teams values(6,'Alfa Romeo F1 Team ORLEN',2,'Frédéric Vasseur');
insert into Teams values(7,'Aston Martin Aramco Cognizant F1',3,'Mike Krack');
insert into Teams values(8,'Haas F1 Team',2,'Guenther Steiner');
insert into Teams values(9,'Scuderia AlphaTauri',1,'Franz Tost');
insert into Teams values(10,'Williams Racing',3,'Jost Capito');


create table BestTeams(
	id int primary key,
	team_name varchar(100),
	no_constructors_titles int,
	no_race_wins int
	)

insert into BestTeams values(1,'Scuderia Ferrari',16,241);
insert into BestTeams values(2,'Williams Racing',9,114)
insert into BestTeams values(3,'McLaren F1 Team',8,183);
insert into BestTeams values(4,'Mercedes-AMG Petronas F1 Team',8,124);
insert into BestTeams values(5,'Lotus F1 Team',7,79);
insert into BestTeams values(6,'Oracle Red Bull Racing',5,90);
insert into BestTeams values(7,'Cooper Car Company',2,16);
insert into BestTeams values(8,'Motor Racing Developments, Ltd.',2,35);
insert into BestTeams values(9,'Renault Formula 1 team',2,35);
insert into BestTeams values(10,'Vanwall',1,9);
insert into BestTeams values(11,'British Racing Motors',1,17);
insert into BestTeams values(12,'Equipe Matra Sports',1,9);
insert into BestTeams values(13,'Tyrrell Racing Organisation',1,23);
insert into BestTeams values(14,'Benetton Formula',1,27);
insert into BestTeams values(15,'Brawn GP Formula One',1,8);

create table Drivers(
	id int primary key,
	team_id int foreign key references Teams(id),
	driver_name varchar(50),
	car int,
	WorldChampionships int
);



insert into Drivers values(1,1,'Max Verstappen',1,2);
insert into Drivers values(2,1,'Sergio Perez',11,0);
insert into Drivers values(3,2,'Charles Leclerc',16,0);
insert into Drivers values(4,2,'Carlos Sainz',55,0);
insert into Drivers values(5,3,'Lewis Hamilton',44,7);
insert into Drivers values(6,3,'George Russell',63,0);
insert into Drivers values(7,4,'Fernando Alonso',14,2);
insert into Drivers values(8,4,'Esteban Ocon',31,0);
insert into Drivers values(9,5,'Daniel Ricciardo',3,0);
insert into Drivers values(10,5,'Lando Norris',4,0);
insert into Drivers values(11,6,'Valtteri Bottas',77,0);
insert into Drivers values(12,6,'Zhou Guanyu',24,0);
insert into Drivers values(13,7,'Sebastian Vettel',5,4);
insert into Drivers values(14,7,'Lance Stroll',18,0);
insert into Drivers values(15,8,'Mick Schumacher',47,0);
insert into Drivers values(16,8,'Kevin Magnussen',20,0);
insert into Drivers values(17,9,'Pierre Gasly',10,0);
insert into Drivers values(18,9,'Yuki Tsunoda',22,0);
insert into Drivers values(19,10,'Nicholas Latifi',6,0);
insert into Drivers values(20,10,'Alexander Albon',23,0);
insert into Drivers values(21,10,'Nyck De Vries',45,0);
insert into Drivers values (22, 7,'Nico Hulkenberg',27,0);


create table BestDrivers(
	id int primary key,
	driver_name varchar(50),
	no_of_WC int,
	no_of_races int,
	no_of_wins int,
	no_of__poles int,
	career_points decimal(7,1)
	);

	
insert into BestDrivers values(1,'Lewis Hamilton',7,308,103,103,4381.5)
insert into BestDrivers values(2,'Michael Schumacher',7,308,91,68,1566);
insert into BestDrivers values(3,'Sebastian Vettel',4,298,53,57,3099);
insert into BestDrivers values(4,'Alain Prost',4,199,51,33,768.5);
insert into BestDrivers values(5,'Ayrton Senna',3,161,41,65,610);
insert into BestDrivers values(6,'Max Verstappen',2,161,34,17,1973.5);
insert into BestDrivers values(7,'Fernando Alonso',2,356,32,22,2045);
insert into BestDrivers values(8,'Nigel Mansell',1,187,31,32,482);
insert into BestDrivers values(9,'Jackie Stewart',3,99,27,17,360);
insert into BestDrivers values(10,'Niki Lauda',3,171,25,24,420.5);


create Table Circuits(
	id int primary key,
	name varchar(100),
	type varchar(50),
	city varchar(50),
	country varchar(50),
	length decimal(4,3)
);
insert into Circuits values(1, 'Albert Park Circuit','street', 'Melbourne', 'Australia', 5.278);
insert into Circuits values(2,'Algarve International Circuit','race','Portimão','Portugal',4.653);
insert into Circuits values(3,'Autodromo Enzo e Dino Ferrari','race','Imola','Italy',4.909);
insert into Circuits values(4,'Autódromo Hermanos Rodríguez','race','Mexico City','Mexico',4.304);
insert into Circuits values(5,'Autodromo Internazionale del Mugello','race','Scarperia e San Pietro','Italy',5.245);
insert into Circuits values(6,'Autodromo José Carlos Pace','race','São Paulo','Brazil',4.309);
insert into Circuits values(7,'Autodromo Nazionale di Monza','race','Monza','Italy',5.793);
insert into Circuits values(8,'Bahrain International Circuit','race','Sakhir','Bahrain',5.412);
insert into Circuits values(9,'Baku City Circuit','street','Baku','Azerbaijan',6.003);
insert into Circuits values(10,'Circuit de Barcelona-Catalunya','race','Barcelona','Spain',4.675);
insert into Circuits values(11,'Circuit de Monaco','street','Monte Carlo','Monaco',3.337);
insert into Circuits values(12,'Circuit de Spa-Francorchamps','race','Spa','Belgium',7.004);
insert into Circuits values(13,'Circuit Gilles-Villeneuve','street','Montreal','Canada',4.361);
insert into Circuits values(14,'Circuit of the Americas','race','Austin','United States',5.513);
insert into Circuits values(15,'Circuit Paul Ricard','race','Le Castellet','France',5.842);
insert into Circuits values(16,'Circuit Zandvoort','race','Zandvoort','Netherlands',4.259);
insert into Circuits values(17,'Hungaroring','race','Budapest','Hungary',4.381);
insert into Circuits values(18,'Intercity Istanbul Park','race','Istanbul','Turkey',5.338);
insert into Circuits values(19,'Jeddah Corniche Circuit','street','Jeddah','Saudi Arabia',6.174);
insert into Circuits values(20,'Losail International Circuit','race','Lusail','Qatar',5.380);
insert into Circuits values(21,'Marina Bay Street Circuit','street','Marina Bay','Singapore',5.063);
insert into Circuits values(22,'Miami International Autodrome','street','Miami','United States',5.412);
insert into Circuits values(23,'Nürburgring','race','Nürburg','Germany',5.148);
insert into Circuits values(24,'Red Bull Ring','race','Spielberg','Austria',4.318);
insert into Circuits values(25,'Shanghai International Circuit','race','Shanghai','China',5.451);
insert into Circuits values(26,'Silverstone Circuit','race','Silverstone','United Kingdom',5.891);
insert into Circuits values(27,'Sochi Autodrom','race','Sochi','Russia',5.848);
insert into Circuits values(28,'Suzuka International Racing Course','race','Suzuka','Japan',5.807);
insert into Circuits values(29,'Yas Marina Circuit','race','Abu Dhabi','United Arab Emirates',5.281);


create table GrandPrix2022(
	id int primary key,
	full_name varchar(100),
	circuit_id int foreign key references Circuits(id),
	race_date date,
);



insert into GrandPrix2022 values(1,'FORMULA 1 GULF AIR BAHRAIN GRAND PRIX 2022',8,'2022-03-20');
insert into GrandPrix2022 values(2,'FORMULA 1 STC SAUDI ARABIAN GRAND PRIX 2022',19,'2022-03-27');
insert into GrandPrix2022 values(3,'FORMULA 1 HEINEKEN AUSTRALIAN GRAND PRIX 2022',1,'2022-04-10');
insert into GrandPrix2022 values(4,'FORMULA 1 ROLEX GRAN PREMIO DEL MADE IN ITALY E DELL`EMILIA-ROMAGNA 2022',3,'2022-04-24');
insert into GrandPrix2022 values(5,'FORMULA 1 CRYPTO.COM MIAMI GRAND PRIX 2022',22,'2022-05-08')
insert into GrandPrix2022 values(6,'FORMULA 1 PIRELLI GRAN PREMIO DE ESPAÑA 2022',10,'2022-05-22');
insert into GrandPrix2022 values(7,'FORMULA 1 GRAND PRIX DE MONACO 2022',11,'2022-05-29');
insert into GrandPrix2022 values(8,'FORMULA 1 AZERBAIJAN GRAND PRIX 2022',9,'2022-06-12');
insert into GrandPrix2022 values(9,'FORMULA 1 AWS GRAND PRIX DU CANADA 2022',13,'2022-06-19');
insert into GrandPrix2022 values(10,'FORMULA 1 LENOVO BRITISH GRAND PRIX 2022',26,'2022-07-03');
insert into GrandPrix2022 values(11,'FORMULA 1 ROLEX GROSSER PREIS VON ÖSTERREICH 2022',24,'2022-07-10');
insert into GrandPrix2022 values(12,'FORMULA 1 LENOVO GRAND PRIX DE FRANCE 2022',15,'2022-07-24');
insert into GrandPrix2022 values(13,'FORMULA 1 ARAMCO MAGYAR NAGYDÍJ 2022',17,'2022-07-31');
insert into GrandPrix2022 values(14,'FORMULA 1 ROLEX BELGIAN GRAND PRIX 2022',12,'2022-08-28');
insert into GrandPrix2022 values(15,'FORMULA 1 HEINEKEN DUTCH GRAND PRIX 2022',16,'2022-09-04');
insert into GrandPrix2022 values(16,'FORMULA 1 PIRELLI GRAN PREMIO D’ITALIA 2022',7,'2022-09-11');
insert into GrandPrix2022 values(17,'FORMULA 1 SINGAPORE AIRLINES SINGAPORE GRAND PRIX 2022',21,'2022-10-02');
insert into GrandPrix2022 values(18,'FORMULA 1 HONDA JAPANESE GRAND PRIX 2022',28,'2022-10-09');
insert into GrandPrix2022 values(19,'FORMULA 1 ARAMCO UNITED STATES GRAND PRIX 2022',14,'2022-10-23');
insert into GrandPrix2022 values(20,'FORMULA 1 GRAN PREMIO DE LA CIUDAD DE MÉXICO 2022',4,'2022-10-30');
insert into GrandPrix2022 values(21,'FORMULA 1 HEINEKEN GRANDE PRÊMIO DE SÃO PAULO 2022',6,'2022-11-13');
insert into GrandPrix2022 values(22,'FORMULA 1 ETIHAD AIRWAYS ABU DHABI GRAND PRIX 2022',29,'2022-11-20');


create table Participate(
	driver_id int foreign key references Drivers(id),
	gp_id int foreign key references GrandPrix2022(id),
	starting_pos tinyint,
	final_pos tinyint, --null if the driver did not finish the race
	--time_of_day time,
	check(starting_pos>0 and starting_pos<=20),
	check (final_pos>=0 and final_pos<21),
	CONSTRAINT GpAndDriverPK primary key (gp_id,driver_id),
	--CONSTRAINT GPstart unique(gp_id, starting_pos),
	--CONSTRAINT GPfinish unique(gp_id,final_pos)
)
create unique index unique_pos on Participate(gp_id,starting_pos) where starting_pos is not null;
create unique index unique_result on Participate(gp_id,final_pos) where final_pos is not null;





--driver,gp,start,final,time
insert into Participate values(1,1,2,null);
insert into Participate values(2,1,4,null);
insert into Participate values(3,1,1,1);
insert into Participate values(4,1,3,2);
insert into Participate values(5,1,5,3);
insert into Participate values(6,1,9,4);
insert into Participate values(7,1,8,9);
insert into Participate values(8,1,11,7);
insert into Participate values(9,1,18,14);
insert into Participate values(10,1,13,15);
insert into Participate values(11,1,6,6);
insert into Participate values(12,1,15,10);
insert into Participate values(22,1,17,17);
insert into Participate values(14,1,19,12);
insert into Participate values(15,1,12,11);
insert into Participate values(16,1,7,5);
insert into Participate values(17,1,10,null);
insert into Participate values(18,1,16,8);
insert into Participate values(19,1,20,16);
insert into Participate values(20,1,14,13);

insert into Participate values(1,2,4,1);
insert into Participate values(2,2,1,4);
insert into Participate values(3,2,2,2);
insert into Participate values(4,2,3,3);
insert into Participate values(5,2,16,10);
insert into Participate values(6,2,6,5);
insert into Participate values(7,2,7,null);
insert into Participate values(8,2,5,6);
insert into Participate values(9,2,12,null);
insert into Participate values(10,2,11,7);
insert into Participate values(11,2,8,null);
insert into Participate values(12,2,13,11);
insert into Participate values(22,2,17,12);
insert into Participate values(14,2,15,13);
insert into Participate values(15,2,14,null);
insert into Participate values(16,2,10,9);
insert into Participate values(17,2,9,8);
insert into Participate values(18,2,19,null);
insert into Participate values(19,2,18,null);
insert into Participate values(20,2,17,14);

insert into Participate values(1,3,2,null);
insert into Participate values(2,3,3,2);
insert into Participate values(3,3,1,1);
insert into Participate values(4,3,9,null);
insert into Participate values(5,3,5,4);
insert into Participate values(6,3,6,3);
insert into Participate values(7,3,10,17);
insert into Participate values(8,3,8,7);
insert into Participate values(9,3,7,6);
insert into Participate values(10,3,4,5);
insert into Participate values(11,3,12,8);
insert into Participate values(12,3,14,11);
insert into Participate values(13,3,17,null);
insert into Participate values(14,3,19,12);
insert into Participate values(15,3,15,13);
insert into Participate values(16,3,16,14);
insert into Participate values(17,3,11,9);
insert into Participate values(18,3,13,15);
insert into Participate values(19,3,18,16);
insert into Participate values(20,3,20,10);

insert into Participate values(1,4,1,1);
insert into Participate values(2,4,3,2);
insert into Participate values(3,4,2,6);
insert into Participate values(4,4,4,null);
insert into Participate values(5,4,14,13);
insert into Participate values(6,4,11,4);
insert into Participate values(7,4,9,null);
insert into Participate values(8,4,16,14);
insert into Participate values(9,4,6,18);
insert into Participate values(10,4,5,3);
insert into Participate values(11,4,7,5);
insert into Participate values(12,4,20,15);
insert into Participate values(13,4,13,8);
insert into Participate values(14,4,15,10);
insert into Participate values(15,4,10,17);
insert into Participate values(16,4,8,9);
insert into Participate values(17,4,17,12);
insert into Participate values(18,4,12,7);
insert into Participate values(19,4,19,16);
insert into Participate values(20,4,18,11);

insert into Participate values(1,5,3,1);
insert into Participate values(2,5,4,4);
insert into Participate values(3,5,1,2);
insert into Participate values(4,5,2,3);
insert into Participate values(5,5,6,6);
insert into Participate values(6,5,12,5);
insert into Participate values(7,5,11,11);
insert into Participate values(8,5,20,8);
insert into Participate values(9,5,14,13);
insert into Participate values(10,5,8,null);
insert into Participate values(11,5,5,7);
insert into Participate values(12,5,17,null);
insert into Participate values(13,5,13,17);
insert into Participate values(14,5,10,10);
insert into Participate values(15,5,15,15);
insert into Participate values(16,5,16,16);
insert into Participate values(17,5,7,null);
insert into Participate values(18,5,9,12);
insert into Participate values(19,5,19,14);
insert into Participate values(20,5,18,9);

insert into Participate values(21,5,18,9); -----not ok

	

create table Points(
	final_pos int primary key,
	no_points decimal(4,1)
);
insert into Points values(1,25);
insert into Points values(2,18);
insert into Points values(3,15);
insert into Points values(4,12);
insert into Points values(5,10);
insert into Points values(6,8);
insert into Points values(7,6);
insert into Points values(8,4);
insert into Points values(9,2);
insert into Points values(10,1);
insert into Points values(11,0);
insert into Points values(12,0);
insert into Points values(13,0);
insert into Points values(14,0);
insert into Points values(15,0);
insert into Points values(16,0);
insert into Points values(17,0);
insert into Points values(18,0);
insert into Points values(19,0);
insert into Points values(20,0);



create table DriverOfTheDay(
	id int primary key,
	GP_id int  foreign key references GrandPrix2022(id),
	driver_id int foreign key references Drivers(id),
);

insert into DriverOfTheDay values(1,1,3);
insert into DriverOfTheDay values(2,2,3);
insert into DriverOfTheDay values(3,3,3);
insert into DriverOfTheDay values(4,4,1);
insert into DriverOfTheDay values(5,5,1);

create table FastestLaps(
	id int primary key,
	driver_id int foreign key references Drivers(id),
	GP_id int  foreign key references GrandPrix2022(id),
	time time,
	unique(GP_id, driver_id)
	)
insert into FastestLaps values(1,3,1,'00:01:34.570')
insert into FastestLaps values(2,3,2,'00:01:31.634')





update DriverOfTheDay
set gp_id=6, driver_id=4
where id = 5

delete from DriverOfTheDay
where id like 5

insert into BestDrivers values(11,'George Russel', null,80,0,1,250);


update BestDrivers
set no_of_WC=1 
where no_of_WC is null or driver_name like '%George%'

delete from BestDrivers
where driver_name like 'George Russel'


update Points
set no_points=1
where final_pos between 11 and 15

update Teams
set no_constructors_titles=0
where  no_constructors_titles is null

update Points
set no_points=0
where final_pos in (11,12,13,14,15)

--a 2 queries with the union operation; use UNION [ALL] and OR;

--drivers that have only 1 or 2 WC
select driver_name
from Drivers
where WorldChampionships=1 or WorldChampionships=2
union 
select driver_name
from BestDrivers
where no_of_WC=1 or no_of_WC=2

ALTER TABLE Teams
ADD no_constructors_titles int

update Teams
set no_constructors_titles=8
where team_name like '%McLaren%'


--teams which have 7 CTs or at least 80 wins
select top 5 team_name, no_constructors_titles
from Teams 
where no_constructors_titles>7
union all
select team_name, no_constructors_titles
from BestTeams 
where no_constructors_titles>7 or no_race_wins>=80
order by no_constructors_titles desc


select*
from BestTeams



--b 2 queries with the intersection operation; use INTERSECT and IN;

--drivers that were on the podium and are also in top 10 BestDrivers 
select driver_name
from BestDrivers
intersect
select D.driver_name 
from Drivers D, Participate P
where d.id=p.driver_id and P.final_pos<4


select distinct C.country
from Circuits C
where C.id in (select circuit_id from GrandPrix2022)


--c 2 queries with the difference operation; use EXCEPT and NOT IN;

--drivers who did not score any points
select distinct D.driver_name
from Drivers D
where D.id not in
	(select D.id 
	from Drivers D, Participate P
	where d.id=p.driver_id and P.final_pos<10)


--circuits not used in 2022
select C.id
from Circuits C
except
select circuit_id
from GrandPrix2022 


--d 4 queries with INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN (one query per operator); one query will join at least 3 tables, while another one will join at least two many-to-many relationships;

--see all the data from the Circuit's table with the corresponding GP
select*
from Circuits left join GrandPrix2022 on Circuits.id=GrandPrix2022.circuit_id


--see all the info about the teams and their drivers

select*
from Teams inner join Drivers on Teams.id=Drivers.team_id
			inner join Engine on Teams.engine=Engine.id

--see all the info about the drivers and the fastest laps they won

select *
from FastestLaps right join Drivers on Drivers.id=FastestLaps.driver_id


--see all the info about the drivers and the results from every GP(starting position, final position and fastest lap, if won)
select *
from Participate P full join FastestLaps F on P.driver_id=F.driver_id and P.gp_id=F.GP_id
			inner join Drivers D on D.id=P.driver_id

--e. 2 queries with the IN operator and a subquery in the WHERE clause; in at least one case, the subquery must include a subquery in its own WHERE clause;

--see all the drivers driving a car with a ferrari engine

select driver_name 
from Drivers
where team_id in (select id
					from Teams
					where engine in (select Engine.id
									from Engine
									where Engine.name like '%Ferrari%'))

--see all the teams from BestTeams that are still in the competition
select *
from Teams 
where Teams.team_name in (select BestTeams.team_name
						from BestTeams);

--f. 2 queries with the EXISTS operator and a subquery in the WHERE clause;

--see all the cirrcuits used in 2022
select distinct *
from Circuits C
where exists (select *
				from GrandPrix2022 GP
				where GP.circuit_id=C.id)

--see the drivers from 2022 who are also in BestDrivers
select *
from Drivers D
where exists(select*
			from BestDrivers BD
			where BD.driver_name=D.driver_name)

--g. 2 queries with a subquery in the FROM clause; 

--see the id of the drivers that didn't finish the first GP
select X.driver_id
from(select *
from Participate P
where P.gp_id=1) X
where X.final_pos is null

--from what position did Max Ver. start when he did not finish the race
select Y.starting_pos, Y.gp_id
from(select *
from Participate P
where P.driver_id=1)Y
where Y.final_pos is  null


--h. 4 queries with the GROUP BY clause, 3 of which also contain the HAVING clause; 2 of the latter will also have a subquery in the HAVING clause; 
--use the aggregation operators: COUNT, SUM, AVG, MIN, MAX;

--cate WCs au pilotii de la fiecare echipa (adunate)
select Sum(D.WorldChampionships), team_id
from Drivers D
group by D.team_id

--idul pilotilor si media pozitiilor lor finale pentru pilotii care au media mai mica de 10
select avg(P.final_pos) as averageResult, P.driver_id
from Participate P
group by P.driver_id
having avg(final_pos)<10

--rezultatul cel mai bun si id-ul pilotilor care au terminat pe pozitii mai mici decat cea mai buna potizie a politului 7
select min(P.final_pos) as minResult, P.driver_id
from Participate P
group by P.driver_id
having min(final_pos)<(select min(final_pos)
						from Participate
						where Participate.driver_id=7)

--pozitia cea mai mare de start si id-ul pilotilor care au plecat mereu de pe pozitii mai mici decat cea mai buna pozitie a pilotului cu id 16
select max(P.starting_pos) as maxStart, P.driver_id
from Participate P
group by P.driver_id
having max(starting_pos)<(select min(starting_pos)
						from Participate
						where Participate.driver_id=16)

--i. 4 queries using ANY and ALL to introduce a subquery in the WHERE clause (2 queries per operator); 
--rewrite 2 of them with aggregation operators, and the other 2 with IN / [NOT] IN.

select T.team_name
from Teams T
where T.no_constructors_titles>any(select BT.no_constructors_titles
									from BestTeams BT
									where BT.no_race_wins<70)

select T.team_name
from Teams T
where T.no_constructors_titles>(select min(BT.no_constructors_titles)
								from BestTeams BT
								where BT.no_race_wins<70)


select D.driver_name
from Drivers D
where D.WorldChampionships<all(select BD.no_of_WC
									from BestDrivers BD)

select D.driver_name
from Drivers D
where D.WorldChampionships<(select min(BD.no_of_WC)
									from BestDrivers BD)


select C.name,C.country
from Circuits C
where C.id <> all(select Gp.circuit_id
					from GrandPrix2022 GP)

select C.name, C.country
from Circuits  C
where C.id not in(select Gp.circuit_id
					from GrandPrix2022 GP)

select BD.driver_name
from BestDrivers BD
where BD.driver_name =any(select Drivers.driver_name
						from DriverOfTheDay inner join Drivers on DriverOfTheDay.id=Drivers.id)

select BD.driver_name
from BestDrivers BD
where BD.driver_name in (select Drivers.driver_name
						from DriverOfTheDay inner join Drivers on DriverOfTheDay.id=Drivers.id)





update Drivers
set WorldChampionships=1
where driver_name like '%Rus%'


select top 10 D.driver_name, sum(PTS.no_points)+count(FL.driver_id) as Total_points
from Participate P inner join Points PTS on P.final_pos=PTS.final_pos
	inner join Drivers D on P.driver_id=D.id
	left join FastestLaps FL on Fl.driver_id=D.id and FL.GP_id=P.gp_id
group by D.driver_name
order by Total_points desc


select*
from Participate P inner join Points PTS on P.final_pos=PTS.final_pos
	inner join Drivers D on P.driver_id=D.id
	left join FastestLaps FL on Fl.driver_id=D.id and FL.GP_id=P.gp_id


select* 
from FastestLaps


