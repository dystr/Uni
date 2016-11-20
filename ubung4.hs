-- Aufgabe 1
{- Der Euklidische Algorithmus ermittelt den größten gemeinsamen Teiler zweier Integer.
Dies erfolgt indem der kleinere der beiden Integer von dem größeren wiederholt abgezogen wird, bis der Rest kleiner als der kleinere der beiden Werte ist(a % b).
Daraufhin wird der selbe Vorgang mit dem Rest und dem kleineren Wert wiederholt, bis der Rest 0 beträgt. Dann ist der größere der beiden letzten eingabewerte der größte gemeinsame Teiler.
-}
euklid ::Integral a => a -> a -> a
euklid a 0 = a
euklid a b = euklid b (mod a b) -- Subtraktion nach Euklid lässt sich auf modulo reduzieren.

--Aufgabe 2
sublists :: [Int] -> [[Int]]
sublists []  = [[]]
sublists (x:xs) = sublists xs ++ map (x:) (sublists xs) -- Erzeugt alle möglichen Teillisten

maxsublist :: (Ord a, Num a) => [[a]] -> a
maxsublist  lists = maximum (map sum lists) --Wendet sum auf jede Teillisten an und gibt das größte Ergebnis wieder.

tabularasa :: (Ord a, Num a) => [[a]] -> (a, [a]) --Vorlesung verpasst, Teilfolgen-Problem nicht im Lernraum gefunden.
tabularasa lists = maximum (zip (map sum lists) lists)  -- Löst das Problem, aber nicht wie gefordert. Grund siehe oben.
