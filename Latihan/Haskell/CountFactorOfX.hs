-- DEFINISI DAN SPESIFIKASI
countFactorOfX :: Int -> [Int] -> Int
{- countFactorOfX n l mengembalikan banyaknya kemunculan ​bilangan yang merupakan faktor dari n pada l -} 

isEmpty :: [Int] -> Bool
{- Mengecek apakah terdapat isi list atau tidak -}

-- REALISASI
countFactorOfX n l = 
    if isEmpty l then 0
    else if mod (head l) n == 0 then 1 + (countFactorOfX n (tail l))
    else countFactorOfX n (tail l)

isEmpty l = null l

-- APLIKASI
-- countFactorOfX 2 [1,2,3,4]