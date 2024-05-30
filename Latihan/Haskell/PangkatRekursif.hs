-- DEFINISI DAN SPESIFIKASI
pangkat :: Int -> Int -> Int
{- pangkat a b mengeluarkan output berupa a pangkat b dengan metode rekursif -}
pangkat a b
    | b == 0 = 1
    | otherwise = a * pangkat a (b-1)

-- APLIKASI
-- pangkat 2 3 -> 8
-- pangkat 4 2 -> 16