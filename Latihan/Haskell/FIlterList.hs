module FilterList where

    -- DEFIINISI DAN SPESIFIKASI
    isPos :: Int -> Bool
    {- Mengecek bilangan positif dan jika positif, maka mengeluarkan True, selain itu False -}
    -- REALISASI
    isPos x = x >= 0

    -- DEFINISI DAN SPESIFIKASI
    isNeg :: Int -> Bool
    {- Mengecek bilangan negatif dan jika negatif, maka mengeluarkan True, selain itu False -}
    -- REALISASI
    isNeg x = x < 0

    -- DEFINISI DAN SPESIFIKASI
    isKabisat :: Int -> Bool
    {- Mengcek apakah bilangan tersebut kabisat atau tidak, dengan ketentuan:
        jika kelipatan 400 maka kabisat
        tetapi jika kelipatan 100 maka bukan kabisat
        tetapi jika kelipatan 4 maka kabisat
        selain itu bukan kabisat
    -}
    -- REALISASI
    isKabisat x
        | mod x 400 == 0 = True
        | mod x 100 == 0 = False
        | mod x 4 == 0 = True
        | otherwise = False

    -- DEFINISI DAN SPESIFIKASI
    filterList :: [Int] -> (Int -> Bool) -> [Int]
    {- Menerima List Integer dan menerima fungsi isPos, isNeg, atau isKabisat dan mengeluarkan 
    list integer sesuai dengan fungsi yang diinput -}
    -- REALISASI
    filterList li f
        | null li = []
        | otherwise = 
            if f (head li) == True then [head li] ++ filterList (tail li) f
            else filterList (tail li) f