module ListOfInteger where

    -- No. 2
    isEqual :: [Int] -> [Int] -> Bool

    isEqual l1 l2
        | null l1 && null l2 = True
        | null l1 || null l2 = False
        | head l1 == head l2 = isEqual (tail l1) (tail l2)
        | otherwise = False

    -- No. 3
    -- countNb :: Int -> [Int] -> Int
    -- countNb a li
    --     | null li = 0
    --     | a == head li = 1 + countNb a (tail li)
    --     | otherwise = countNb a (tail li)

    -- maxNb :: [Int] -> (Int, Int)
    -- maxNb li
    --     | length li <= 1 = (head li, countNb (head li) li)
    --     | head li > head (tail li) = (head li, countNb (head li) li)
    --     | otherwise = maxNb (tail li)

    maxX :: [Int] -> Int
    maxX li
        | length li <= 1 = head li
        | head li > head(tail li) = head li
        | otherwise = maxX (tail li)
    
    numx :: Int -> [Int] -> Int
    numx a li
        | length li <= 0 = 1
        | a == head li = 1 + numx (tail li)
        | otherwise = numx (tail li)

    maxNb :: [Int] -> (Int, Int)
    maxNb li
        | length li == 1 = head li
        | otherwise = (maxX li, numx (maxX li) li)


    -- No. 6

    listPos :: [Int] -> [Int]
    listPos li
        | null li = []
        | head li >= 0 = [head li] ++ listPos (tail li)
        | otherwise = listPos (tail li)
    
    listNeg :: [Int] -> [Int]
    listNeg li
        | null li = []
        | head li < 0 = [head li] ++ listNeg (tail li)
        | otherwise = listNeg (tail li)

    pecahListPosNeg :: [Int] -> ([Int], [Int])
    pecahListPosNeg li =
        if null li then ([], [])
        else (listPos li, listNeg li)
    
