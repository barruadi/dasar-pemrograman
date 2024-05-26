-- DEFINISI DAN SPESIFIKASI
delNthElmt :: Int -> [Char] -> [Char] 
{- delNthElmt(n,l) menghilangkan elemen ke-n dari l. ​
    Asumsi: n adalah integer positif dan lebih kecil atau sama dengan jumlah elemen l. ​l tidak kosong. -}

isEmpty :: [Char] -> Bool
{- Mengecek apakah terdapat isi list atau tidak -}

konso :: Char -> [Char] -> [Char]
{- Menambahkan Int ke dalam sebuah list -}

-- REALISASI
delNthElmt n l =
    if isEmpty l then []
    else if n == 1 then tail l
    else (konso (head l) (delNthElmt(n-1)(tail l)))

isEmpty l = null l
konso e l = [e] ++ l

-- APLIKASI 
-- delNthElmt 3 ['h','a','s','k','e','l','l']