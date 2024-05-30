module Fibonacci where

-- DEFINISI DAN SPESIFIKASI
fibonacci :: Int -> Int
{- Menerima 1 input berupa integer dan mengeluarkan bilangan fibonacci ke-2 -}

-- REALISASI
fibonacci n
  | n <= 1 = n 
  | otherwise = fibonacci (n - 1) + fibonacci (n - 2)

-- APLIKASI
-- fibonacci 100