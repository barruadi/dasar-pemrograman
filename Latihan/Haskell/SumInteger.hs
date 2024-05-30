module SumInteger where

    -- DEFINISI DAN SPESIFIKASI
    isGenap :: Int -> Bool
    {- isGenap x menghasilkan True jika x adalah bilangan genap -}
    isGenap x = mod x 2 == 0

    -- DEFINISI DAN SPESIFIKASI
    gtThan5 :: Int -> Bool
    {- gtThan5 x menghasilkan True jika x > 5 -}
    gtThan5 x = x > 5

    -- DEFINISI DAN SPESIFIKASI
    lwrThan10 :: Int -> Bool
    {- lwrThan10 x menghasilkan True jika x < 10 -}
    lwrThan10 x = x < 10

    -- DEFINISI DAN SPESIFIKASI
    isMultOf5 :: Int -> Bool
    {- isMultOf5 x menghasilkan True jika x kelipatan 5 -}
    isMultOf5 x = mod x 5 == 0

    -- DEFINISI DAN SPESIFIKASI
    isMultOf100 :: Int -> Bool
    {- isMultOf100 x menghasilkan True jika x kelipatan 100 -}
    isMultOf100 x = mod x 100 == 0

    -- DEFINISI DAN SPESIFIKASI
    sumInteger :: Int -> Int -> (Int -> Bool) -> Int
    {- sumInteger m n f menghasilkan jumlah integer antara m dan n sesuai fungsi f -}
    sumInteger m n f
        | m > n = 0
        | otherwise =
            if f n == True then n + sumInteger m (n-1) f
            else sumInteger m (n-1) f