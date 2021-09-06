create database formula_one_list;
use formula_one_list;
create table formulaone_details(
formula_id int not null,
Team varchar (20) not null,
Car_Model varchar (20) not null,
Colour varchar (20) not null,
Engine_Make varchar (20) not null,
Team_Principal varchar (20) not null
);
explain formulaone_details;
insert into formulaone_details (formula_id, Team, Car_Model, Colour, Engine_Make, Team_Principal)
values('1', 'Mercedes', 'W12', 'Black', 'Mercedes', 'Toto Wolff'),
('2', 'Red Bull', 'RB16B', 'Blue', 'Honda', 'Christian Horner'),
('3', 'Mclaren', 'MCL35M', 'Papaya', 'Mercedes', 'Zak Brown'),
('4', 'Ferrari', 'SF21', 'Red', 'Ferrari', 'Mattia Binotto'),
('5', 'Alpine', 'A521', 'Blue', 'Renault', 'Laurent Rossi'),
('6', 'Aston Martin', 'AMR21', 'Green', 'Mercedes', 'Otmar Szafnauer'),
('7', 'Alfa Romeo', 'C41', 'White and Red', 'Ferrari', 'Frederic Vasseur'),
('8', 'Alpha Tauri', 'AT02', 'White and Blue', 'Honda', 'Franz Tost'),
('9', 'Williams', 'FW43', 'White', 'Mercedes', 'Jost Capito'),
('10', 'Haas', 'VF-21', 'White, Red and Blue', 'Ferrari', 'Guenther Steiner');
explain formulaone_details;
select * from formulaone_details;
UPDATE formulaone_details
SET Colour = 'pink'
WHERE formula_id = 1;
select * from formulaone_details;

use formula_one_list;
create table formulaone_racedetails(
formula_id int not null,
Team varchar (20) not null,
Driver varchar (30) not null,
Track varchar (20) not null,
Fastest_Lap_Recorded char(15) not null
); 
explain formulaone_racedetails;
insert into formulaone_racedetails (formula_id, Team, Driver, Track, Fastest_Lap_Recorded)
values('1', 'Mercedes', 'Lewis Hamilton', 'Italy', '1:22.746'),
('2', 'Mercedes', 'Valtteri Bottas', 'Italy', '1:23.961'),
('3', 'Red Bull', 'Max Verstappen', 'Italy', '1:25.539'),
('4', 'Red Bull', 'Alex Albon', 'Italy', '1:24.888'),
('5', 'Mclaren', 'Carlos Sainz', 'Italy', '1:23.882'),
('6', 'Mclaren', 'Lando Norris', 'Italy', '1:24.232'),
('7', 'Ferrari', 'Charles Leclerc', 'Italy', '1:26.026'),
('8', 'Ferrari', 'Sebastian Vettel', 'Italy', '1:27.107'),
('9', 'Alpine', 'Daniel Ricciardo', 'Italy', '1:23.898'),
('10', 'Alpine', 'Esteban Ocon', 'Italy', '1:24.490'),
('11', 'Aston Martin', 'Lance Stroll', 'Italy', '1:23.897'),
('12', 'Aston Martin', 'Sergio Perez', 'Italy', '1:24.336'),
('13', 'Alfa Romeo', 'Kimi Raikkonen', 'Italy', '1:24.835'),
('14', 'Alfa Romeo', 'Antonio Giovinazzi', 'Italy', '1:24.856'),
('15', 'Alpha Tauri', 'Pierre Gasly', 'Italy', '1:24.037'),
('16', 'Alpha Tauri', 'Daniil Kvyat', 'Italy', '1:24.479'),
('17', 'Williams', 'George Russell', 'Italy', '1:24.421'),
('18', 'Williams', 'Nicholas Latifi', 'Italy', '1:24.999'),
('19', 'Haas', 'Romain Grosjean', 'Italy', '1:24.785'),
('20', 'Haas', 'Kevin Magnussen', 'Italy', '1:25.787');
explain formulaone_racedetails;
select * from formulaone_racedetails;
DELETE FROM formulaone_racedetails
WHERE formula_id = '16' ;
select * from formulaone_racedetails;

select * from formulaone_racedetails
WHERE formulaone_racedetails.Fastest_Lap_Recorded = '1:25.787' ;

select * from formulaone_details, formulaone_racedetails
WHERE formulaone_details.formula_id = formulaone_racedetails.formula_id AND formulaone_details.Team = 'Mercedes' ;

use formulaone_racedetails;
SELECT * FROM formulaone_racedetails ORDER BY Fastest_Lap_Recorded;

SELECT * FROM formulaone_racedetails
WHERE formula_id between 1 and 10 ;

SELECT formulaone_details.formula_id, formulaone_racedetails.formula_id
FROM formulaone_details 
INNER JOIN formulaone_racedetails
ON formulaone_details.formula_id = formulaone_racedetails.formula_id; 