-- Menentukan apakah bilangan tersebut ganjil atau tidak

-- DEFINISI DAN SPESIFIKASI
isGanjil :: Int -> Bool
    {- Menerima bilangan integer positif lalu mengeluarkan Boolean apakah ganjil atau bukan -}

-- REALISASI
isGanjil n =
    if n == 0 then n == 1
    else if n == 1 then n == 1
    else isGanjil(n-2)

-- APLIKASI
-- isGanjil 13 = True
-- isGanjil 10 = False