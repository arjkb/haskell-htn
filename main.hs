-- safetail using pattern matching
safetailpm::[a] -> [a]
safetailpm [] = []
safetailpm (x:xs) = xs

-- safetail using guarded equations
safetailg xs | null xs = []
             | otherwise = tail xs

-- safetail using conditional expressions
safetailc xs = if null xs then [] else tail xs