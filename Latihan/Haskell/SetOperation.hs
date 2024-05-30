setOperation :: [Int] -> [Int] -> Char -> [Int]

setOperation l1 l2 c 
    | c == 'I' =
        if null l1 || null l2 then []
        else if head l1 == head l2 then [head l1] ++ setOperation (tail l1) (tail l2) c
        else if head l1 < head l2 then setOperation (tail l1) l2 c
        else setOperation l1 (tail l2) c
    | c == 'S' =
        if 