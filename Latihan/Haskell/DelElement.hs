delElement :: Int -> [Int] -> [Int]
delElement x li
    | head li == x = tail li
    | otherwise = [head li] ++ delElement x (tail li)