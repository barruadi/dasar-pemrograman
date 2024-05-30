module PersamaanKubik where
    persamaanKubik :: Int -> Int -> Int -> Int -> Int -> Bool
    persamaanKubik a b c d x = (a * (x*x*x)) + (b * (x*x)) + (c * x) + d == 0