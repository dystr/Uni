{- Aufgabe 1
1: b, c
  b: x = 'h', y = 'a', ys = 'llo'
  c: Exception, irrefutable pattern failed.
2: c
  c: x = (), y = [], xs = []
3: b, c
  b: x = 'h'
4: b, c
  b: Exception, irrefutable pattern failed.
  c: a = [()]
-}

-- Aufgabe 2

data Tree a = Nil
   | Leaf a
   | Br (Tree a) (Tree a)

build :: [a] -> Tree a
build [] = Nil
build [a] = Leaf a
build as = Br (build (take k as)) (build (drop k as))
   where
      k = length as `div` 2

size :: Tree a -> Int
size Nil   = 0
size (Leaf n)    = 1
size (Br x  z)    = size x + size z

depth::Tree a -> Int
depth Nil = 0
depth (Leaf _) = 1
depth (Br l r) = 1 + max (depth l) (depth r)

-- Aufgabe 3
{-
1. Str -> Str
2. [Str] -> [Str]
3.
  remdups: (Str -> Str) (3*)
  map: function -> [Str] -> [Str]
-}
-- Aufdgabe 4

divideAndConquer :: (p -> Bool) -> (p -> s) -> (p -> [p]) -> (p -> [s] -> s) -> p -> s
divideAndConquer isSimple solve divide combine prob
   = if isSimple prob
      then solve prob
      else combine prob solutions
      where solutions = map solveRec (divide prob)
            solveRec = divideAndConquer isSimple solve divide combine

qSort :: (Ord a) => [a] -> [a]
qSort = divideAndConquer isSimple solve divide combine
   where
      isSimple = (<= 1) . length
      solve = id
      divide []   = [[]]
      divide [v]  = [[v]]
      divide (v:vs) = [smaller, [v], larger]
         where
            smaller = [y | y <- vs, y <= v]
            larger  = [y | y <- vs, y > v]
      combine p s = concat s

-- Aufgabe 5
