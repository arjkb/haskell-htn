-- safetail using pattern matching
safetailpm::[a] -> [a]
safetailpm [] = []
safetailpm (x:xs) = xs

-- safetail using guarded expressions
safetailg xs | null xs = []
             | otherwise = tail xs