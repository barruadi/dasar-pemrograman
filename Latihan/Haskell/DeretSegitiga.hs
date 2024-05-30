-- Mencari nilai bilangan ke-n pada deret segitiga

-- DEFINISI DAN SPESIFIKASI
deretSegitiga :: Int -> Int
    {- Menerima bilangan positif integer dan mengeluarkan hasil -}
    {- Bilangan ke-n pada deret segitiga -}

-- REALISASI
deretSegitiga n =
    if n == 1 then 1
    else n + deretSegitiga (n-1)

-- APLIKASI
-- deretSegitiga 8 = 36
-- deretSegitiga 3 = 6