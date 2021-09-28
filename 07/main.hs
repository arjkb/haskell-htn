-- Pythagoreans
pyths :: Int -> [(Int, Int, Int)]
pyths n = [ (x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], ((x^2 + y^2) == (z^2))]

-- scalar product
scalar :: [Int] -> [Int] -> Int
scalar xs ys = sum [x + y | (x, y) <- zip xs ys]

-------------------------------------------------------
-- perfects
factors :: Int -> [Int]
factors n = [x | x <- [2..n-1], (mod n x) == 0]
