module GabungList where
    gabungList :: [Int] -> [Int] -> [Int]

    gabungList l1 l2
        | null l1 = l2
        | null l2 = l1
        | head l1 < head l2 = [head l1] ++ gabungList (tail l1) l2
        | otherwise = [head l2] ++ gabungList l1 (tail l2)