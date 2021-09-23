-- safetail using pattern matching
safetailpm::[a] -> [a]
safetailpm [] = []
safetailpm (x:[]) = [x]
safetailpm (x:xs) = xs