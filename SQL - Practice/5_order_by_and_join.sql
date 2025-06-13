-- Problem: Get number of Cars made between 1950 and 2000 per make, and order them by Number of Cars descending

SELECT Makes.Make, COUNT(*) AS [Number of Cars]
FROM Cars
INNER JOIN Makes ON Cars.MakeID = Makes.MakeID
WHERE Cars.Year BETWEEN 1950 AND 2000
GROUP BY Makes.Make
ORDER BY [Number of Cars] DESC;
