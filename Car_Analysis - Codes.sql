create database cars;
use cars;

-- 1) Read car data 
select * from car;

-- 2) total cars: to get a count of total car records
select count(*) from car;

-- 3) the manager asked the employee how many cars will be available in 2023?
select count(*) from car where year = 2023;

-- 4) the manager asked the employee how many cars are available in 2020, 2021, 2022
select count(*) from car where year = 2020;
select count(*) from car where year = 2021;
select count(*) from car where year = 2022;
-- using only one query
select count(*) from car where year in (2020,2021,2022) group by year;

-- 5) client asked me to print the total of all cars by the year. He cannot see all the details which are present
select count(*), year from car
group by year 
order by count(*) desc;

-- 6)	client asked to the car dealer agent how many diesel cars will there be in 2020?
select count(*) from car where year = 2020 and fuel = 'Diesel';

-- 7)	Client requested a car dealer agent how many petrol cars will there be in 2020?
select count(*) from car where year = 2020 and fuel = 'Petrol';

-- 8)	The manager told the employee to give a print of all the fuel cars (petrol, diesel and CNG) combined all the year
select fuel,count(*) ,year from car 
where fuel in ('Petrol', 'Diesel', 'CNG', 'Electric') 
group by year;

select count(*), year from car where fuel = 'Petrol' group by year;

-- 9)	Manager said there were more than 100 cars in a specific year. Find which year had 100 cars
select year, count(*) from car group by year having count(*) > 100;

-- 10)	The manager asked to the employee find all cars count details between 2015 and 2023.
select count(*) from car where year between 2015 and 2023;

-- 11)	The manager asked to the employee to find the details of all car between 2015 and 2023. 
select * from car where year between 2015 and 2023;
