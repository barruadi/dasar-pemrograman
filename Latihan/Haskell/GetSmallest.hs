getSmallest :: [Int] -> Int
getSmallest li
    | length li == 1 = head li
    | head li > head (tail li) = getSmallest (tail li)
    | otherwise = getSmallest ([head li] ++ (tail(tail li)))