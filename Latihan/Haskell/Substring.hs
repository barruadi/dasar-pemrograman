substring :: [Char] -> Int -> Int -> [Char]

substring l n m 
    | m == 0 = head l
    | n == 0 = head l ++ substring (tail l) n (m-1)
    | otherwise = substring (tail l) (n-1) (m-1)