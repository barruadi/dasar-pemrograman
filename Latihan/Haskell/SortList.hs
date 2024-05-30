sortList :: [Int] -> [Int]

sortList li
    | length li == 1 = [head li]
    | head li < head(tail li) = [head li] ++ sortList(tail li)
    | otherwise = [head(tail li)] ++ sortList([head li] ++ tail(tail li))