-- DEFINISI DAN SPESIFIKASI 
filterGanjil :: [Int] -> [Int]
{- Menerima 1 buah list Integer dan mengembalikan list yang hanya berisi bilangan ganjil -}

isEmpty :: [Int] -> Bool
{- Mengecek apakah terdapat isi list atau tidak -}

konso :: Int -> [Int] -> [Int]
{- Menambahkan Int ke dalam sebuah list -}

-- REALISASI
filterGanjil l = 
    if isEmpty l then []
    else if mod (head l) 2 == 1 then (konso ( head l ) ( filterGanjil ( tail l )))
    else filterGanjil(tail l)

isEmpty l = null l
konso e l = [e] ++ l

-- APLIKASI
-- filterGanjil [1,2,3]