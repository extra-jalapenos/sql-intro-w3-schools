-- not sure whether the prefix has to be isolated with parantheses or not
SELECT *, SUBSTRING_INDEX(Phone, " ", 1) AS Prefix FROM Shippers;

-- alternatively, if we are sure it's always properly formatted:
SELECT *, MID(Phone, 2, 3) AS Prefix FROM Shippers;
