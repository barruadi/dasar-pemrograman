-- MENGHITUNG HASIL PENJUMLAHAN DARI SETIAP BILANGAN TUNGGAL

-- DEFINISI DAN SPESIFIKASI
sumOfDigits :: Int -> Int
    {- Menerima bilangan integer dan mengeluarkan hasil jumlah dari tiap bilangan tunggal -}
sumOfDigitsPosNeg :: Int -> Int
    {- Menerima bilangan negatif integer dan menggunakan FUngsi sumOfDigits -}

-- REALISASI
sumOfDigits m =
    if m == 0 then 0
    else mod m 10 + sumOfDigits (div m 10)

sumOfDigitsPosNeg m =
    if m < 0 then sumOfDigits (-1 * m)
    else sumOfDigits m

-- APLIKASI
-- SumOfDigits(234) = 2 + 3 + 4 = 9
-- SumOfDigits(38) = 3 + 8 = 11
-- SumOfDigitsPosNeg(-45) = 4 + 5 = 9