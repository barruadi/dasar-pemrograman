-- Menjumlahkan bilangan integer dari a sampai b

-- DEFINISI DAN SPESIFIKASI
sumRange :: Int -> Int -> Int
    {- menerima masukan 2 bilangan integer, 
    misalnya a dan b yang menyatakan rentang bilangan dengan syarat: a <= b; 
    a dan b bilangan positif; 
    dan menghasilkan penjumlahan semua bilangan dari a s.d. b. -}

-- REALISASI
sumRange m n =
    if m == n then m
    else n + sumRange m (n-1)

-- APLIKASI
-- sumRange 2 4 = 9
-- sumRange 4 4 = 4
