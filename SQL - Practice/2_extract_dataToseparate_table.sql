
-- Problem 2: Extract all unique car makes from the CarDetails table, 
--         insert them into a Makes table, 
--         then update the CarDetails table with proper MakeIDs by joining the tables.


-- Problem 2.1: Get all car makes (including duplicates)
select Make from CarDetails

-- Problem 2.2: Get distinct car makes sorted alphabetically
select distinct Make from CarDetails -- ignore the repeat name
order by Make Asc;


-- Problem 2.3: Insert unique makes into Makes table
-- (Assumes Makes table has at least MakeName column)
insert into Makes
select distinct Make from CarDetails
order by Make Asc;

-- Verify Makes table content
select * from Makes;

-- Problem 2.4: Update CarDetails with MakeIDs by matching makes
-- (Assumes both tables now have MakeID and MakeName columns)
update CarDetails
set MakeID =
        (
            select MakeID from Makes where Makes.MakeName = CarDetails.Make
        )
;

-- Problem 2.5: Demonstrate table join
-- Shows how to get make names by joining CarDetails and Makes tables
SELECT Makes.MakeName
FROM CarDetails INNER JOIN
     Makes ON CarDetails.MakeID = Makes.MakeID 