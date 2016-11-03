divisor :: Int -> [Int]
divisor 0 = []
divisor n = 1 : filter ((==0) . rem n) [2 .. n `div` 2]

isPrime :: Int -> Bool
isPrime n = divisor n == [1]


