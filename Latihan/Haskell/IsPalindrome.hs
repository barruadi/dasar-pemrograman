isPalindrome :: [Char] -> Bool

isPalindrome l
    | length l <= 1 = True
    | head l == last l = isPalindrome (tail (init l))
    | otherwise = False