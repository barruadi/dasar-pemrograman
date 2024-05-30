module CountGanjil where
countGanjil :: [Int] -> Int

countGanjil x
    | null x = 0
    | mod (head x) 2 == 1 = 1 + countGanjil (tail x)
    | otherwise countGanjil (tail x)
