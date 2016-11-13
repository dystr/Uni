-- Aufgabe 1
-- Int

--Aufgabe 2
failPredicate function list = filter (not . function) list

--Aufgabe 3
deleteElem v list = failPredicate (/=v) list
