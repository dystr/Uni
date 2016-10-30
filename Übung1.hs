{-
Aufgabe 1
  1. Edsger Wybe Dijkstra -> Dijkstra-Algorithmus (Kürzester Pfad innerhalb eines Graphen.
  2. John von Neumann			-> Begründete Spieltheorie als mathematische Disziplin, beteiligt am Bau der Wasserstoffbombe.
  3. John William Mauchly -> Entwickler von ENIAC, EDVAC, BINAC und UNIVAC.
  4. Ada Lovelace					-> Entwicklung des ersten theoretischen Computer Programms.
  5. John Vincent Atanasoff -> Erster digitaler Computer.
  6. John Backus					-> FORTRAN Entwicklung. (Erste Programmiersprache abstrahiert von Assembly).
  7. Grace Hopper					-> Erster Compiler.
  8. John Presper Eckert  -> Entwickler (ENIAC, UNIVAC)
  9. Konrad Zuse					-> Erste "High-Level" Programmiersprache "Plankalkül".
  10. Alan Turing					-> Turingmaschine, Enigma entschlüsselung.
  11. Charles Babbage			-> Erster mechanischer Computer.
  12. Linus Torvalds			-> Schrieb erste Version des Linux Kernel. "Nvidia,fuck you!"
-}
	
module Main where
main :: IO ()
main = putStrLn "Hello World"

-- Aufgabe 2
fkt = [ 3 + 13 `div` 2 .. ] !! 1 : [ 5 .. 7 ] --Ausgabe: Liste
fkte = ((([(3 + (13 `div` 2)) ..]) !! 1) : ([5 .. 7]))
-- Aufgabe 3
outputEven :: Int -> String
outputEven x
  | x == 0 = "zero"
  | even x =  "even number"
  | otherwise = "oddnumber"

--Aufgabe 4
isABC :: Char -> Bool
isABC x = x >= 'a' && x < 'd'

--Aufgabe 5
fibx :: Int -> Int
fibx 0 = 0
fibx 1 = 1
fibx x = fibx (x-1) + fibx (x-2)

-- f(x) = f(x-1) + f(x-2)
--Aufgabe 6
a = [ "Hallo","Guten Tag"," " ]
c = [ "Herr","Frau" ]
b = "Sehr geehrter" : ["Sehr geehrte","Lieber","Liebe","Hochwuerdigste Exzellenz","Ehrwuerdiger"]
d = [ "Professor","Professorin" ] ++ [ "Prof." ]
e = 'N':'e':'b':'e':'l':[]
f = [":",";","?","!"]
space = a !! 2
satz = b !! 0 ++ space ++ c !! 0 ++ space ++ d !! 2 ++ space ++ e ++ f !! 3
