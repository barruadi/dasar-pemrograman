module HitungBensin where

-- DEFINISI DAN SPESIFIKASI
hitungBensin :: Int -> Int -> Int
{- menerima 2 integer yaitu keberangkatan awal dan akhir dan mengeluarkan 1 buah integer berupa hasil bensin -}

bensinPerRute :: Int -> Int
{- Menghitung jumlah bensin yang dibutuhkan untuk 1 rute -}
-- REALISASI
bensinPerRute n
    | n == 1 = 0
    | (mod n 2) == 0 = 1 + (bensinPerRute (div n 2))
    | otherwise = 1 + (bensinPerRute (3 * n + 1))

hitungBensin a b
    | a == b = bensinPerRute a
    | otherwise = bensinPerRute a + (hitungBensin (a + 1) b)

-- APLIKASI
-- hitungBensin 1 11