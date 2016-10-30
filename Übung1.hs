module Main where
main :: IO ()
main = putStrLn "Hello World"

-- Aufgabe 2
fkt :: Int -> Int
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

{-a = [ "Hallo","Guten Tag","" ]
c = [ "Herr","Frau" ]
b = "Sehr geehrter" : ["Sehr geehrte","Lieber","Liebe","Hochwuerdigste Exzellenz","Ehrwuerdiger"]
d = [ "Professor","Professorin" ] ++ [ "Prof." ]
e = 'N':'e':'b':'e':'l':[]
f = [":",";","?","!"]
satz x = a !! x !! 0 ++ b !! x !! 1 ++ c !! x !! 2 ++ d !! x !! 3 ++ e !! x !! 4 ++ f !! x !! 5
-}
