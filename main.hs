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