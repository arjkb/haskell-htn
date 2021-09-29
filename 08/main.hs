-- Without looking at prelude, define following using recursion
-- and :: [Bool] -> Bool
and' :: [Bool] -> Bool
and' (False:_) = False
and' (True:[]) = True
and' (True:xs) = and' xs

-- Without looking at prelude, define following using recursion
-- concat' :: [[a]] -> [a]
concat' :: [[a]] -> [a]
concat' (x:[]) = x
concat' (x:xs) = x ++ (concat' xs)
