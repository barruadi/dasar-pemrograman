module Max3 where

-- DEFINISI DAN SPESIFIKASI
max3:: Int -> Int -> Int -> Int
{- fungsi max3 menerima 3 input dan mengeluarkan bilangan terbesar dari ketiga input-}

-- REALISASI
max3 a b c
	| c > b && c > a = c
	| b > a = b
	| otherwise = a

-- APLIKASI
-- max3 5 1 2
