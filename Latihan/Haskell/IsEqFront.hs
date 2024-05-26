-- DEFINISI DAN SPESIFIKASI
isEqFront :: [Char] -> [Char] -> Bool
{- Menerima 2 buah list Character dan membandingkan apakah sama atau tidak pada depan listnya-}
isEmpty :: [Char] -> Bool

-- REALISASI
isEqFront t1 t2 =
    if head t1 /= head t2 then False
    else if isEmpty t1 then True
    else isEqFront (tail t1) (tail t2)

isEmpty l = null l 

-- APLIKASI
-- isEqFront ['a','b','c'] ['a','b','c','d','e']