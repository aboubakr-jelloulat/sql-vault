-- Problem  : Get number Cars made between 1950 and 2000

select count (*) as 'Number of Cars' from Cars
where year between 1950 and 2000;