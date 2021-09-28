-- safetail using pattern matching
safetailpm::[a] -> [a]
safetailpm [] = []
safetailpm (x:xs) = xs

-- safetail using guarded equations
safetailg :: [b] -> [b]
safetailg xs | null xs = []
             | otherwise = tail xs

-- safetail using conditional expressions
safetailc :: [a] -> [a]
safetailc xs = if null xs then [] else tail xs

-----------------------------------------------------------
-- Give 3 possible definitions of || using pattern matching
or' :: Bool -> Bool -> Bool
or' False b = b
or' True _  = True

or'' :: Bool -> Bool -> Bool
or'' False False = False
or'' _ _ = True

or''' True True   = True
or''' True False  = True
or''' False True  = True
or''' False False = False

-----------------------------------------------------------

-- redefine the following version of && using conditionals
--     True && True = True
--     _    && _    = False
and' :: Bool -> Bool -> Bool
and' x y = if x == True
            then if y == True then True else False
            else False

-----------------------------------------------------------

-- redefine the following version of && using conditionals
--     True  && b = b
--     False && _ = False
and'' :: Bool -> Bool -> Bool
and'' x y = if x == True
                then y
                else False