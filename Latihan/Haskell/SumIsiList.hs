-- DEFIINISI DAN SPESIFIKASI
sumIsiList :: [Int] -> Int
{- Menerima 1 buah list  berisi integer dan mengembalikan jumlah bilangan yang ada di dalamnya -}
isEmpty :: [Int] -> Bool
{- Mengecek apakah isi list ada atau tidak -}

-- REALISASI
sumIsiList l = 
    if isEmpty l then 0
    else head(l) + sumIsiList(tail(l))

isEmpty l = null l

-- APLIKASI 
-- sumIsiList [1,2,3]