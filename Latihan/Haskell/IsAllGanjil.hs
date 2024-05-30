isAllGanjil :: [Int] -> Bool
isAllGanjil li
    | isEmpty li = True
    | otherwise =
        if mod (head li) 2 == 1 then isAllGanjil (tail li)
        else False