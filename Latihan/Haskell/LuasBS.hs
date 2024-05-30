-- Menghitung luas bujur sangkar menggunakan metode rekursif

-- DEFINISI DAN SPESIFIKASI
luasBS :: Int -> Int 
    {- Menerima 1 input dan mengeluarkan 1 output -}
hitung :: Int -> Int -> Int
    {- Menerima 2 input untuk dikalikan secara rekursif -}

-- REALISASI
luasBS x = hitung x x

hitung m n =
    if n <= 0 then 0
    else m + hitung m (n-1)

-- APLIKASI
-- luasBS 5 = 25
-- luasBS 10 = 100