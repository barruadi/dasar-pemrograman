isMenaik :: [Int] -> Bool

isMenaik l
    | length l == 1 = True
    | head l > head (tail l) = False
    | otherwise = isMenaik (tail l)