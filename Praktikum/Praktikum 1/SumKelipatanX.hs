module SumKelipatanX where

-- DEFINISI DAN SPESIFIKASI
sumKelipatanX :: Int -> Int -> Int -> Int
{- menerima 3 input m n x dan mengeluarkan jumlah kelipatan yang ada di antara m dan n -}

-- REALISASI
sumKelipatanX m n x
  | (m > n) = 0
  | (m <= n) && (mod m x == 0) = m + sumKelipatanX (m+1) n x
  | (m <= n) && (mod m x /= 0) = sumKelipatanX (m+1) n x

-- APLIKASI
-- sumKelipatanX 1 10 2
