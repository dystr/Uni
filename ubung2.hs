--Aufgabe 1
{-
r = 3t + 2b
n = t + b
t =+ 1, b =- 1 => r =+ 1
r - n * 2 = t
n * 3 - r = b
-}
trikes :: Int -> Int -> Int
trikes r n
    |r > ( n * 3 ) = error "Too many wheels!"
    |r < ( n * 2 ) = error "Not enough wheels!"
    |otherwise = r - n * 2

bikes :: Int -> Int -> Int
bikes r n
    |r > ( n * 3 ) = error "Too many wheels!"
    |r < ( n * 2 ) = error "Not enough wheels!"
    |otherwise = n * 3 - r

--Aufgabe 2
divisor :: Int -> [Int]
divisor 0 = []
divisor n = 1 : filter ((==0) . rem n) [2 .. n `div` 2]

isPrime :: Int -> Bool
isPrime n = divisor n == [1]

--Aufgabe 3
deleteElem :: (Eq a) => a -> [a] -> [a]
deleteElem a l = filter (/= a) l

--Aufgabe 4
sumGauss :: Int -> Int
sumGauss n
    | n == 0 = 0
    | otherwise = ( n * ( n + 1 ) ) `div` 2 + ( sumGauss ( n - 1 ) )

--Aufgabe 6
maxElem ::Ord a => [a] -> a
maxElem l
	| l == []= error "empty list"
	| length l == 1 = l !! 0
	| otherwise = maxElem (filter (> head l) l)
    
--Aufgabe 8
{-dist :: Int -> [(Int,Int)]
dist r = [(t,b)] | (x,y) <- ((3 * t + 2 * b) == r)
-}



