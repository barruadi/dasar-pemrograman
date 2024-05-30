module ListOfCharacter where

    -- FUNCTIONS
    konso :: Char -> [Char] -> [Char]
    konso e lc = [e] ++ lc

    konsDot :: [Char] -> Char -> [Char]
    konsDot lc e = lc ++ [e]

    isEmpty :: [Char] -> Bool
    isEmpty l = null l

    isOneElmt :: [Char] -> Bool
    isOneElmt l = (length l) == 1 

    -- PALINDROM
    isPalindrom :: [Char] -> Bool
    isPalindrom l
        | length l <= 1 = True
        | head l == last l = isPalindrom (tail (init l))
        | otherwise = False

    -- SPLIT ALTERNATE
    insertGanjil :: [Char] -> Int -> [Char]
    insertGanjil li a
        | null li = []
        | a == 1 = []
        | mod a 2 == 1 = 
            if mod (a + 1) 2 == 0 then [head li] ++ insertGanjil (tail li) (a-1)
            else insertGanjil (tail li) (a-1)
        | otherwise = [head li ] ++ insertGanjil (tail li) (a-1)
    
    insertGenap :: [Char] -> Int -> [Char]
    insertGenap li a
        | null li = []
        | mod a 2 == 0 = 
            if mod (a + 1) 2 == 0 then [head li] ++ insertGanjil (tail li) a
            else insertGanjil (tail li) a
        | otherwise = [head li] ++ insertGanjil (tail li) a

    splitAlternate :: [Char] -> ([Char], [Char])
    splitAlternate li
        | null li = ([], [])
        | otherwise = (insertGenap li (length li), insertGanjil li (length li))
